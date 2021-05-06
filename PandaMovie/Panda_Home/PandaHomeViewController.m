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
#import "GuoJiQihuoNewsModel.h"
#import "LYHSTockHttpRequestTool.h"
#import "PandaHotComentViewController.h"
@interface PandaHomeViewController ()<UITableViewDelegate,UITableViewDataSource,PandaHomeHeaderViewDelegate>
@property(nonatomic,strong) UITableView * PandaHomeTableView;
@property(nonatomic,strong) PandaHomeHeaderView * PandaHeader;
@property(nonatomic,strong) PandaHomeNavView              * PandaNavView;
@property(nonatomic,strong) NSMutableArray * PandaDataArr;
@end

@implementation PandaHomeViewController

- (PandaHomeNavView *)PandaNavView{
    if (!_PandaNavView) {
        _PandaNavView = [[PandaHomeNavView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_Width, NaviH)];
        _PandaNavView.backgroundColor = [UIColor clearColor];
    }
    return _PandaNavView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navigationBar.hidden = YES;
    [self.view addSubview:self.PandaNavView];
    [self.view addSubview:self.PandaHomeTableView];
    self.PandaHeader.kheight = self.PandaHeader.PandanHeaderHeight;
    _PandaHomeTableView.tableHeaderView  = self.PandaHeader;
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
#pragma mark--刷新
-(void)PandaHomeTableViewHeaderClick{
    MJWeakSelf;
    NSMutableDictionary * WindWoundHomeParmter = [[NSMutableDictionary alloc]initWithDictionary:@{@"channel":@"科技",@"num":@"10",@"start":@"0"}];
    [LYHSTockHttpRequestTool NewpostHttpRequestWithURL:@"http://jisunews.market.alicloudapi.com/news/get" Parameters:WindWoundHomeParmter Success:^(id  _Nonnull object) {
        NSArray * WindWoundHomeData =[[object objectForKey:@"result"]  objectForKey:@"list"];
        NSMutableArray * WindWoundHomeTemp= [[NSMutableArray alloc]init];
        for (NSDictionary * WindWoundHomeDics in WindWoundHomeData) {
            GuoJiQihuoNewsModel * WindWoundHomeItem = [GuoJiQihuoNewsModel BaseinitWithDic:WindWoundHomeDics];
            if (![WindWoundHomeItem.content containsString:@"https://interface.sina.cn/wap_api/video_location.d.html"]) {
                [WindWoundHomeTemp addObject:WindWoundHomeItem];
            }
        }
        weakSelf.PandaDataArr = WindWoundHomeTemp;
        [weakSelf.PandaHomeTableView reloadData];
        [weakSelf.PandaHomeTableView.mj_header endRefreshing];
    } Failure:^(id  _Nonnull fail) {
        [LCProgressHUD showFailure:fail];
        [weakSelf.PandaHomeTableView.mj_header endRefreshing];
    }];
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
        PandaKefuViewController * pandaKefuVc = [[PandaKefuViewController alloc]init];
        pandaKefuVc.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:pandaKefuVc animated:YES];
    }
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
