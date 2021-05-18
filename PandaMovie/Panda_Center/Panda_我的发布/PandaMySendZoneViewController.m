//
//  PandaMySendZoneViewController.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/17.
//

#import "PandaMySendZoneViewController.h"
#import "PandaZoneCollectionViewCell.h"
#import "PandaSendZoneToolController.h"
@interface PandaMySendZoneViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong) UITableView  * FilmFactoryTableView;
@property(nonatomic,strong) NSMutableArray * FilmFactorydataArr;

@end

@implementation PandaMySendZoneViewController
-(NSMutableArray *)FilmFactorydataArr{
    if (!_FilmFactorydataArr) {
        _FilmFactorydataArr = [NSMutableArray array];
    }
    return _FilmFactorydataArr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"我的发布";
    [self.view addSubview:self.FilmFactoryTableView];

    // Do any additional setup after loading the view.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.FilmFactorydataArr[section] count];
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return K(20);
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.FilmFactorydataArr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *  FilmFactoryIdentifer = @"PandaZoneCollectionViewCell";
    UITableViewCell * FilmFactoryCell = [tableView dequeueReusableCellWithIdentifier:FilmFactoryIdentifer];
    if (FilmFactoryCell == nil) {
        FilmFactoryCell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:FilmFactoryIdentifer];
    }
    return FilmFactoryCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return K(180);
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}
- (UITableView *)FilmFactoryTableView{
    if (!_FilmFactoryTableView) {
        _FilmFactoryTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, NaviH, SCREEN_Width, SCREEN_Height-NaviH-kTabBarHeight) style:UITableViewStyleGrouped];
        _FilmFactoryTableView.delegate = self;
        _FilmFactoryTableView.dataSource = self;
        _FilmFactoryTableView.showsVerticalScrollIndicator = NO;
        _FilmFactoryTableView.showsHorizontalScrollIndicator = NO;
        _FilmFactoryTableView.backgroundColor =  [UIColor clearColor];
        _FilmFactoryTableView.separatorStyle =  UITableViewCellSelectionStyleNone;
        _FilmFactoryTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(FilmFactoryTableViewheaderClick)];
        [_FilmFactoryTableView.mj_header beginRefreshing];
    }
    return _FilmFactoryTableView;
}
-(void)FilmFactoryTableViewheaderClick{
    
    MJWeakSelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (weakSelf.FilmFactorydataArr.count > 0) {
            [weakSelf.FilmFactorydataArr removeAllObjects];
        }
        [LCProgressHUD showInfoMsg:@"暂无数据"];
        LYEmptyView * emtyView = [LYEmptyView emptyActionViewWithImage:nil titleStr:@"暂无发布动态" detailStr:nil btnTitleStr:@"去发布" target:self action:@selector(FilmFactoryEmtyviewClick)];
        weakSelf.FilmFactoryTableView.ly_emptyView = emtyView;
        [weakSelf.FilmFactoryTableView reloadData];
        [weakSelf.FilmFactoryTableView.mj_header endRefreshing];
    });
}
-(void)FilmFactoryEmtyviewClick{
    
    [[GKNavigationBarConfigure sharedInstance] updateConfigure:^(GKNavigationBarConfigure *configure) {
        configure.backgroundColor = [UIColor whiteColor];
    }];
    PandaSendZoneToolController * PandaSendVc = [[PandaSendZoneToolController alloc]init];
    [self.navigationController pushViewController:PandaSendVc animated:YES];
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
