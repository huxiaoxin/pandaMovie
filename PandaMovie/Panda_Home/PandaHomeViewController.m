//
//  PandaHomeViewController.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/4.
//

#import "PandaHomeViewController.h"
#import "PandaHomeHeaderView.h"
#import "PandaHomeNavView.h"
#import "PandaKefuViewController.h"
#import "PandaBangdanViewController.h"
#import "PandaHotNewsViewController.h"
#import "PandaGoodFilmViewController.h"
#import "PandaHomeNewsTableViewCell.h"
#import "PandaHotComentViewController.h"
#import "QRCodeReaderViewController.h"
#import "PandaHomenewsModel.h"
#import "PandaHotNewsDetailController.h"
#import "PandaMoviewDetailViewController.h"
#import "PandaSearchingResultViewController.h"
#import <PYSearch.h>
#import "PandaMoviewDetailViewController.h"
@interface PandaHomeViewController ()<UITableViewDelegate,UITableViewDataSource,PandaHomeHeaderViewDelegate,PandaHomeNavViewDelegate,QRCodeReaderDelegate,PYSearchViewControllerDelegate>
{
    QRCodeReaderViewController * _reader;
}
@property(nonatomic,strong) UITableView * PandaHomeTableView;
@property(nonatomic,strong) PandaHomeHeaderView * PandaHeader;
@property(nonatomic,strong) PandaHomeNavView              * PandaNavView;
@property(nonatomic,strong) NSMutableArray * PandaDataArr;
@property(nonatomic,strong) NSArray  *  PandaWatchingDataArr;
@property(nonatomic,strong) NSArray  *  PandaWatchedDataArr;

@end

@implementation PandaHomeViewController

- (NSMutableArray *)PandaDataArr{
    if (!_PandaDataArr) {
        _PandaDataArr = [NSMutableArray array];
    }
    return _PandaDataArr;
}
- (PandaHomeNavView *)PandaNavView{
    if (!_PandaNavView) {
        _PandaNavView = [[PandaHomeNavView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_Width, NaviH)];
        _PandaNavView.backgroundColor = [UIColor clearColor];
        _PandaNavView.delegate = self;
    }
    return _PandaNavView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navigationBar.hidden = YES;
    [self.view addSubview:self.PandaNavView];
    [self.view addSubview:self.PandaHomeTableView];
    self.PandaHeader.height = self.PandaHeader.PandanHeaderHeight;
    _PandaHomeTableView.tableHeaderView  = self.PandaHeader;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(PandaMovieLoginSucced) name:@"PandaMovieLoginSucced" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(PandaMoviewLoginout) name:@"PandaMoviewLoginout" object:nil];
}
-(void)PandaMovieLoginSucced{
    [self.PandaHomeTableView.mj_header beginRefreshing];
}
-(void)PandaMoviewLoginout{
    [self.PandaHomeTableView.mj_header beginRefreshing];
}
- (PandaHomeHeaderView *)PandaHeader{
    if (!_PandaHeader) {
        _PandaHeader = [[PandaHomeHeaderView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(250+350))];
        _PandaHeader.delegate = self;
    }
    return _PandaHeader;
}
- (UITableView *)PandaHomeTableView{
    if (!_PandaHomeTableView) {
        _PandaHomeTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, NaviH, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_STATUSBAR_NAVBAR_HEIGHT-GK_TABBAR_HEIGHT) style:UITableViewStylePlain];
        _PandaHomeTableView.delegate = self;
        _PandaHomeTableView.dataSource = self;
        _PandaHomeTableView.showsVerticalScrollIndicator = NO;
        _PandaHomeTableView.showsHorizontalScrollIndicator = NO;
        _PandaHomeTableView.separatorStyle = UITableViewCellSelectionStyleNone;
        _PandaHomeTableView.backgroundColor = [UIColor clearColor];
        _PandaHomeTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(PandaHomeTableViewHeaderClick)];
        [_PandaHomeTableView.mj_header beginRefreshing];
    }
    return _PandaHomeTableView;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PandaDataArr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * PandaHomeIdentifer  = @"PandaHomeNewsTableViewCell";
    PandaHomeNewsTableViewCell * pandaCell = [tableView dequeueReusableCellWithIdentifier:PandaHomeIdentifer];
    if (pandaCell == nil) {
        pandaCell = [[PandaHomeNewsTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:PandaHomeIdentifer];
    }
    pandaCell.windtrendItem  = self.PandaDataArr[indexPath.row];
    return pandaCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(100);
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    PandaHotNewsDetailController * GuoJiDetialVc = [[PandaHotNewsDetailController alloc]init];
    GuoJiDetialVc.pandaitem = self.PandaDataArr[indexPath.row];
    GuoJiDetialVc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:GuoJiDetialVc animated:YES];
}
#pragma mark--刷新
-(void)PandaHomeTableViewHeaderClick{
    
    [LCProgressHUD showLoading:@""];
    NSArray * dataArr = [WHC_ModelSqlite query:[PandaMovieModel class]];
    NSDictionary * dictionary =   [self getJsonDataJsonname:@"pandaMoview"];
    MJWeakSelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD hide];
        NSArray * PandaHoemdata =[[[dictionary objectForKey:@"result"] objectForKey:@"result"] objectForKey:@"list"];
        NSMutableArray * PandaHoemTempArr= [[NSMutableArray alloc]init];
        for (NSDictionary * PandaHoemresponeDic in PandaHoemdata) {
            PandaHomenewsModel * PandaHoemritem = [PandaHomenewsModel BaseinitWithDic:PandaHoemresponeDic];
            if (![PandaHoemritem.content containsString:@"https://interface.sina.cn/wap_api/video_location.d.html"]) {
                [PandaHoemTempArr addObject:PandaHoemritem];
            }
        }
        weakSelf.PandaWatchingDataArr = [dataArr subarrayWithRange:NSMakeRange(3, 6)];
        weakSelf.PandaWatchedDataArr = [dataArr subarrayWithRange:NSMakeRange(7, 12)];
        weakSelf.PandaHeader.pandaWatchingArr = weakSelf.PandaWatchingDataArr;
        weakSelf.PandaHeader.pandaWatedArr = weakSelf.PandaWatchedDataArr;
        weakSelf.PandaDataArr = [PandaHoemTempArr subarrayWithRange:NSMakeRange(3, 6)].mutableCopy;
        [weakSelf.PandaHomeTableView reloadData];
        [weakSelf.PandaHomeTableView.mj_header endRefreshing];
    });
    
}
- (id)getJsonDataJsonname:(NSString *)jsonname
{
    NSString *path = [[NSBundle mainBundle] pathForResource:jsonname ofType:@"json"];
    NSData *jsonData = [[NSData alloc] initWithContentsOfFile:path];
    NSError *error;
    id jsonObj = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
    if (!jsonData || error) {
        return nil;
    } else {
        return jsonObj;
    }
}
#pragma mark--PandaHomeHeaderViewDelegate
-(void)PandaHomeHeaderViewWithBtnClickIndex:(NSInteger)btnIndex{
    if (btnIndex == 0) {
        PandaBangdanViewController * pandanBangdanVc = [[PandaBangdanViewController alloc]init];
        pandanBangdanVc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:pandanBangdanVc animated:YES];
    }else if (btnIndex == 1){
        PandaGoodFilmViewController * pandaFilmVc = [[PandaGoodFilmViewController alloc]init];
        pandaFilmVc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:pandaFilmVc animated:YES];
    }else if (btnIndex == 2){
        PandaHotNewsViewController  * HotNewsVc = [[PandaHotNewsViewController alloc]init];
        HotNewsVc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:HotNewsVc animated:YES];
    }else{
        if (![PandaMovieLoginAccoutModel PandaMoviewuserIsLogin]) {
            [self PandanShowLoginVc];   
            return;
        }
        PandaKefuViewController * pandaKefuVc = [[PandaKefuViewController alloc]init];
        pandaKefuVc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:pandaKefuVc animated:YES];
    }
}
-(void)PandaHomeHeaderViewShowLoginVC{
    [self PandanShowLoginVc];
}
-(void)PandaHomeHeaderViewShowRefaeTableVew{
    [self.PandaHomeTableView.mj_header beginRefreshing];
}
-(void)PandaHomeHeaderViewCollectionDidSeltcWith:(PandaMovieModel *)panMode{
    PandaMoviewDetailViewController * pandDetialVc = [[PandaMoviewDetailViewController alloc]init];
    pandDetialVc.hidesBottomBarWhenPushed = YES;
    pandDetialVc.padaItem = panMode;
    [self.navigationController pushViewController:pandDetialVc animated:YES];
    
}
-(void)PandaHomeHeaderViewWithBanarDidSelteceIndex:(NSInteger)index{
    NSInteger pandaID;
    if (index == 1) {
        pandaID = 1;
    }else{
        pandaID = 4;
    }
    NSArray * dataArr = [WHC_ModelSqlite query:[PandaMovieModel class] where:[NSString stringWithFormat:@"FilmID = '%ld'",pandaID]];
    PandaMovieModel * moViewModel =  dataArr.firstObject;
    PandaMoviewDetailViewController * pandDetialVc = [[PandaMoviewDetailViewController alloc]init];
    pandDetialVc.hidesBottomBarWhenPushed = YES;
    pandDetialVc.padaItem = moViewModel;
    [self.navigationController pushViewController:pandDetialVc animated:YES];
    
}
#pragma mark--PandaHomeNavViewDelegate
-(void)PandaHomeNavViewWithScanAction{
    NSArray *types = @[AVMetadataObjectTypeQRCode];
    _reader        = [QRCodeReaderViewController readerWithMetadataObjectTypes:types];
    _reader.delegate = self;
    MJWeakSelf;
    [_reader setCompletionWithBlock:^(NSString *resultAsString) {
        [weakSelf dismissViewControllerAnimated:YES completion:^{
        }];
    }];
    
    [self presentViewController:_reader animated:YES completion:NULL];
}
-(void)PandaHomeNavViewSearchResult{
    PYSearchViewController * pandaSearchVc = [PYSearchViewController searchViewControllerWithHotSearches:@[@"速度与激情9",@"人之怒",@"007:无暇赴死",@"黑寡妇",@"电锯惊魂9"] searchBarPlaceholder:@"快速搜索"];
    pandaSearchVc.searchBar.backgroundColor = [UIColor whiteColor];
    pandaSearchVc.delegate = self;
    pandaSearchVc.hotSearchStyle  = PYHotSearchStyleColorfulTag;
    
    UINavigationController * PandaRootVc = [UINavigationController rootVC:pandaSearchVc];
    PandaRootVc.navigationBar.barTintColor = LGDViewBJColor;
    [self presentViewController:PandaRootVc animated:YES completion:^{
        
    }];
}
- (void)searchViewController:(PYSearchViewController *)searchViewController
      didSearchWithSearchBar:(UISearchBar *)searchBar
                  searchText:(NSString *)searchText{
    NSInteger searchID;
    if ([searchText isEqualToString:@"速度与激情9"]) {
        searchID  = 0;
    }else if ([searchText isEqualToString:@"人之怒"]){
        searchID  = 17;
    }else if ([searchText isEqualToString:@"007:无暇赴死"]){
        searchID  = 22;
    }else if ([searchText isEqualToString:@"黑寡妇"]){
        searchID  = 20;
    }else {
        searchID  = 21;
    }
    MJWeakSelf;
    [searchViewController dismissViewControllerAnimated:NO completion:^{
        PandaSearchingResultViewController * pandaSearchVc = [[PandaSearchingResultViewController alloc]init];
        pandaSearchVc.pandaSearchText = searchText;
        pandaSearchVc.pandaSearchID = searchID;
        pandaSearchVc.hidesBottomBarWhenPushed = YES;
        [weakSelf.navigationController pushViewController:pandaSearchVc animated:YES];
    }];
}
#pragma mark - QRCodeReader Delegate Methods

- (void)reader:(QRCodeReaderViewController *)reader didScanResult:(NSString *)result
{
    [self dismissViewControllerAnimated:YES completion:^{
    }];
}
- (void)readerDidCancel:(QRCodeReaderViewController *)reader
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}
/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
