//
//  PandaMsgViewController.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/4.
//

#import "PandaMsgViewController.h"
#import "PandaMsgTableViewCell.h"
#import "PandaMovieMsgModel.h"
#import "PandaMsgDetailViewController.h"
@interface PandaMsgViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong) UITableView     * PandaMsgTableView;
@property(nonatomic,strong) NSMutableArray  * PandaDataArr;
@end

@implementation PandaMsgViewController
- (NSMutableArray *)PandaDataArr{
    if (!_PandaDataArr) {
        _PandaDataArr =[NSMutableArray array];
    }
    return _PandaDataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle =  @"消息";
    [self.view addSubview:self.PandaMsgTableView];
    self.gk_navItemRightSpace = RealWidth(20);
    UIButton * PandaSednBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [PandaSednBtn setImage:[UIImage imageNamed:@"qingchu"] forState:UIControlStateNormal];
    [PandaSednBtn addTarget:self action:@selector(PandaClearBtnClick) forControlEvents:UIControlEventTouchUpInside];
    self.gk_navRightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:PandaSednBtn];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(PandaMovieLoginSucced) name:@"PandaMovieLoginSucced" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(PandaMoviewLoginout) name:@"PandaMoviewLoginout" object:nil];
    
    [self PandaMoviewRequestData:YES];
}

-(void)PandaMoviewRequestData:(BOOL)isShowActity{
    if (isShowActity) {
    [LCProgressHUD showLoading:@""];
    }
    NSArray * dataArr = [WHC_ModelSqlite query:[PandaMovieMsgModel class]];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD hide];
        if (self.PandaDataArr.count > 0) {
            [self.PandaDataArr removeAllObjects];
        }
        if ([PandaMovieLoginAccoutModel PandaMoviewuserIsLogin]) {
            self.PandaDataArr = dataArr.mutableCopy;
            [self.PandaMsgTableView reloadData];
            [self.PandaMsgTableView.mj_header endRefreshing];
        }else{
            [LCProgressHUD showInfoMsg:@"未登录"];
            LYEmptyView * emtyView = [LYEmptyView emptyActionViewWithImageStr:nil titleStr:@"未登录" detailStr:@"" btnTitleStr:@"去登陆" target:self action:@selector(PandaMovieBtnClick)];
            self.PandaMsgTableView.ly_emptyView = emtyView;
            [self.PandaMsgTableView reloadData];
            [self.PandaMsgTableView.mj_header endRefreshing];
            
        }
    });
}
-(void)PandaMovieBtnClick{
    [self PandanShowLoginVc];
}
-(void)PandaMovieLoginSucced{
[self.PandaMsgTableView.mj_header beginRefreshing];
}
-(void)PandaMoviewLoginout{
[self.PandaMsgTableView.mj_header beginRefreshing];
}
-(void)PandaClearBtnClick{
    if (![PandaMovieLoginAccoutModel PandaMoviewuserIsLogin]) {
        [self PandanShowLoginVc];
        return;
    }
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        for (PandaMovieMsgModel * model in self.PandaDataArr) {
            model.isShowRed = NO;
            [WHC_ModelSqlite update:[PandaMovieMsgModel class] value:[NSString stringWithFormat:@"isShowRed ='%@'",@(model.isShowRed)] where:[NSString stringWithFormat:@"ChatID ='%ld'",(long)model.ChatID]];
        }
        [LCProgressHUD showSuccess:@"清除成功"];
        [self.PandaMsgTableView reloadData];
    });
 
}

-(void)PandaMsgTableViewClicks{
    [self PandaMoviewRequestData:NO];
}
- (UITableView *)PandaMsgTableView{
    if (!_PandaMsgTableView) {
        _PandaMsgTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, NaviH, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-NaviH-GK_TABBAR_HEIGHT) style:UITableViewStylePlain];
        _PandaMsgTableView.delegate = self;
        _PandaMsgTableView.dataSource = self;
        _PandaMsgTableView.showsVerticalScrollIndicator = NO;
        _PandaMsgTableView.showsHorizontalScrollIndicator = NO;
        _PandaMsgTableView.backgroundColor = [UIColor clearColor];
        _PandaMsgTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(PandaMsgTableViewClicks)];
    }
    return _PandaMsgTableView;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PandaDataArr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * PandaIdentifer = @"PandaMsgTableViewCell";
    PandaMsgTableViewCell * pandaCell = [tableView dequeueReusableCellWithIdentifier:PandaIdentifer];
    if (pandaCell == nil) {
        pandaCell = [[PandaMsgTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:PandaIdentifer];
    }
    pandaCell.movieModel = self.PandaDataArr[indexPath.row];
    return pandaCell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    PandaMsgDetailViewController * pandaDetailVc = [[PandaMsgDetailViewController alloc]init];
    pandaDetailVc.pandModel = self.PandaDataArr[indexPath.row];
    pandaDetailVc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:pandaDetailVc animated:YES];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(65);
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
