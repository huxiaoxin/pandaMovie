
#import "PandaZoneJubaoController.h"
#import "PandaZoneJubaoTableViewCell.h"
#import "PandaZoneJubaoModel.h"
@interface PandaZoneJubaoController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong) UITableView * PandaZonejubaoTableView;
@property(nonatomic,strong) NSMutableArray * PandaZonejubaoDatas;
@property(nonatomic,assign) BOOL  PandaZonejubaoStatus;
@end

@implementation PandaZoneJubaoController
-(NSMutableArray *)PandaZonejubaoDatas{
    if (!_PandaZonejubaoDatas) {
        _PandaZonejubaoDatas= [[NSMutableArray alloc]init];
        PandaZoneJubaoModel * pandaItem = [[PandaZoneJubaoModel alloc]init];
        pandaItem.PandaStatus  = NO;
        pandaItem.PandaText = @"内容太水,太垃圾";
        [_PandaZonejubaoDatas addObject:pandaItem];
        
        PandaZoneJubaoModel * pandaItem2 = [[PandaZoneJubaoModel alloc]init];
        pandaItem2.PandaStatus  = NO;
        pandaItem2.PandaText = @"低俗、传播色情";
        [_PandaZonejubaoDatas addObject:pandaItem2];
        
        
        PandaZoneJubaoModel * pandaItem3 = [[PandaZoneJubaoModel alloc]init];
        pandaItem3.PandaStatus  = NO;
        pandaItem3.PandaText = @"未经授权侵犯品牌";
        [_PandaZonejubaoDatas addObject:pandaItem3];
        
        
        PandaZoneJubaoModel * pandaItem4 = [[PandaZoneJubaoModel alloc]init];
        pandaItem4.PandaStatus  = NO;
        pandaItem4.PandaText = @"违禁品传播";
        [_PandaZonejubaoDatas addObject:pandaItem4];
        
        PandaZoneJubaoModel * pandaItem5 = [[PandaZoneJubaoModel alloc]init];
        pandaItem5.PandaStatus  = NO;
        pandaItem5.PandaText = @"其他";
        [_PandaZonejubaoDatas addObject:pandaItem5];
        
        
        
    }
    return _PandaZonejubaoDatas;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"举报";
    self.PandaZonejubaoStatus  =NO;
    [self.view addSubview:self.PandaZonejubaoTableView];

    UIView * PandaMoreView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_Width, K(35))];
    PandaMoreView.backgroundColor = LGDLightGaryColor;
    
    UILabel * PandaMorelb = [[UILabel alloc]initWithFrame:CGRectMake(K(15), K(0), K(200), K(35))];
    PandaMorelb.font = KSysFont(12);
    PandaMorelb.textColor = LGDLightBLackColor;
    PandaMorelb.text = @"可以选择多项";
    [PandaMoreView addSubview:PandaMorelb];
    _PandaZonejubaoTableView.tableHeaderView = PandaMoreView;
    
    
    UIView * PandaCommitingView  = [[UIView alloc]initWithFrame:CGRectMake(0, 0, K(80), K(40))];
    UIButton * PandaCommitingbtn  =[[UIButton alloc]initWithFrame:CGRectMake(K(20), K(10), K(40), K(20))];
    [PandaCommitingbtn setTitle:@"提交" forState:UIControlStateNormal];
    [PandaCommitingbtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    PandaCommitingbtn.titleLabel.font = KSysFont(13);
    [PandaCommitingbtn addTarget:self action:@selector(PandaCommitingbtnClick) forControlEvents:UIControlEventTouchUpInside];
    [PandaCommitingView addSubview:PandaCommitingbtn];
    self.gk_navRightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:PandaCommitingView];
    
    
}
-(UITableView *)PandaZonejubaoTableView{
    if (!_PandaZonejubaoTableView) {
        _PandaZonejubaoTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, NaviH, SCREEN_Width, SCREEN_Height-NaviH-kTabBarHeight) style:UITableViewStylePlain];
        _PandaZonejubaoTableView.delegate = self;
        _PandaZonejubaoTableView.dataSource = self;
        _PandaZonejubaoTableView.showsVerticalScrollIndicator = NO;
        _PandaZonejubaoTableView.showsHorizontalScrollIndicator = NO;
        _PandaZonejubaoTableView.separatorStyle =  UITableViewCellSelectionStyleNone;
        _PandaZonejubaoTableView.backgroundColor = [UIColor clearColor];
        _PandaZonejubaoTableView.mj_header =[MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(PandaCommitingHeaderClick)];
        [_PandaZonejubaoTableView.mj_header beginRefreshing];
    }
    return _PandaZonejubaoTableView;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PandaZonejubaoStatus ? self.PandaZonejubaoDatas.count : 0;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * PandaCommitingIdentifer =  @"PandaZoneJubaoTableViewCell";
    PandaZoneJubaoTableViewCell * PandaCommitingCell = [tableView dequeueReusableCellWithIdentifier:PandaCommitingIdentifer];
    if (PandaCommitingCell == nil) {
        PandaCommitingCell = [[PandaZoneJubaoTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:PandaCommitingIdentifer];
    }
    PandaCommitingCell.FilmItem = self.PandaZonejubaoDatas[indexPath.row];
    return PandaCommitingCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return K(50);
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    PandaZoneJubaoModel * PandaCommitingitme = self.PandaZonejubaoDatas[indexPath.row];
    PandaCommitingitme.PandaStatus = !PandaCommitingitme.PandaStatus;
    [self.PandaZonejubaoTableView reloadData];
}
-(void)PandaCommitingHeaderClick{
    MJWeakSelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        weakSelf.PandaZonejubaoStatus = YES;
        [weakSelf.PandaZonejubaoTableView reloadData];
        [weakSelf.PandaZonejubaoTableView.mj_header endRefreshing];
    });
}
-(void)PandaCommitingbtnClick{
    int FilmZoneMorIndx = 0;
    for (PandaZoneJubaoModel * PandaCommitingitme in self.PandaZonejubaoDatas) {
        if (PandaCommitingitme.PandaStatus) {
            FilmZoneMorIndx+=1;
        }
    }
    if (FilmZoneMorIndx == 0) {
        [LCProgressHUD showInfoMsg:@"请选择举报类型"];
        return;
    }
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD showSuccess:@"感谢支持~,举报结果我们核实后会24h内通知到您"];
        [self.navigationController popViewControllerAnimated:YES];
    });

//    if ([FilmFactoryAccountComponent checkLogin:YES]){
//        [LCProgressHUD showLoading:@""];
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//            [LCProgressHUD showSuccess:@"感谢支持~,举报结果我们核实后会24h内通知到您"];
//            [self.navigationController popViewControllerAnimated:YES];
//        });
//
//    }

    
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

