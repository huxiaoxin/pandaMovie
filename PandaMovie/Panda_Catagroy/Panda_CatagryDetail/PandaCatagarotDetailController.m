

#import "PandaCatagarotDetailController.h"
#import "PandaCatagroyDetailHeaderView.h"
#import "PandaCatagaryDetailFooterView.h"
#import "PandaCatagrotDetailTableViewCell.h"
#import "PandaCatagrortyDetailJoinController.h"
#import <MapKit/MapKit.h>

@interface PandaCatagarotDetailController ()<UITableViewDelegate,UITableViewDataSource,PandaCatagroyDetailHeaderViewDelegate>
@property(nonatomic,strong) UITableView  * pandaDetailTableView;
@property(nonatomic,strong) PandaCatagroyDetailHeaderView * pandaDetailHeader;
@property(nonatomic,strong) PandaCatagaryDetailFooterView  * pandaDetaiFooter;
@property(nonatomic,strong) NSMutableArray *  pandaDetaDatalist;
@property(nonatomic,strong) UIButton * pandaDetaDataBtn;
@end

@implementation PandaCatagarotDetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle =  @"详情";
    self.view.backgroundColor =[UIColor whiteColor];
    [self.view addSubview:self.pandaDetailTableView];
    self.pandaDetailHeader.mj_h = self.pandaDetailHeader.PandaDetailHeaderHeight;
    _pandaDetailTableView.tableHeaderView = self.pandaDetailHeader;
    _pandaDetailTableView.tableFooterView = self.pandaDetaiFooter;
    [self.view addSubview:self.pandaDetaDataBtn];
    
    //
    
    self.gk_navItemRightSpace = 15;
    UIButton * pandaDetaLoactionBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [pandaDetaLoactionBtn setImage:[UIImage imageNamed:@"daohang"] forState:UIControlStateNormal];
    [pandaDetaLoactionBtn addTarget:self action:@selector(pandaDetaLoactionBtnClick) forControlEvents:UIControlEventTouchUpInside];
    self.gk_navRightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:pandaDetaLoactionBtn];
    // Do any additional setup after loading the view.
}
#pragma mark--FilmFacotryLocationDetailHeaderDelegate
-(void)PandaCatagroyDetailHeaderViewBtnClick:(UIButton *)myBtn{
    if (![FilmFactoryToolModel FilmFactoryisLogin]) {
        [self PandanShowLoginVc];
        return;
    }
    self.pandaItem.isCollted = !self.pandaItem.isCollted;

    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (self.pandaItem.isCollted) {
            [LCProgressHUD showSuccess:@"关注成功"];
            myBtn.selected = YES;
        }else{
            [LCProgressHUD showInfoMsg:@"取消关注"];
            myBtn.selected = NO;
        }
        
        [WHC_ModelSqlite update:[PadaCatagoryweizhiModel class] value:[NSString stringWithFormat:@"isCollted ='%@'",[NSNumber numberWithBool:self.pandaItem.isCollted]] where:[NSString stringWithFormat:@"LoactionID ='%ld'",self.pandaItem.LoactionID]];
    });
}
-(void)pandaDetaLoactionBtnClick{
    //终点坐标
    CLLocationCoordinate2D loc = CLLocationCoordinate2DMake(30.25445, 120.20884);
    
    
    //用户位置
    MKMapItem *currentLoc = [MKMapItem mapItemForCurrentLocation];
    //终点位置
    MKMapItem *toLocation = [[MKMapItem alloc]initWithPlacemark:[[MKPlacemark alloc]initWithCoordinate:loc addressDictionary:nil] ];
    
    
    NSArray *items = @[currentLoc,toLocation];
    //第一个
    NSDictionary *dic = @{
                          MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving,
                          MKLaunchOptionsMapTypeKey : @(MKMapTypeStandard),
                          MKLaunchOptionsShowsTrafficKey : @(YES)
                          };
    //第二个，都可以用
//    NSDictionary * dic = @{MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving,
//                           MKLaunchOptionsShowsTrafficKey: [NSNumber numberWithBool:YES]};
    
    [MKMapItem openMapsWithItems:items launchOptions:dic];
    
}
- (UIButton *)pandaDetaDataBtn{
    if (!_pandaDetaDataBtn) {
        _pandaDetaDataBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, SCREEN_Height-K(50), SCREEN_Width-K(0), K(50))];
        [_pandaDetaDataBtn setBackgroundColor: LGDMianColor];
        [_pandaDetaDataBtn setTitle:@"立即参与" forState:UIControlStateNormal];
        [_pandaDetaDataBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _pandaDetaDataBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        _pandaDetaDataBtn.titleLabel.font = [UIFont systemFontOfSize:K(15)];
        [_pandaDetaDataBtn addTarget:self action:@selector(pandaDetaDataBtnClick) forControlEvents:UIControlEventTouchUpInside];
        if ([FilmFactoryToolModel FilmFactoryisLogin]) {
            if (self.pandaItem.isBaoming) {
                [_pandaDetaDataBtn setBackgroundColor:LGDGaryColor];
                [_pandaDetaDataBtn setTitle:@"已参与" forState:UIControlStateNormal];

                _pandaDetaDataBtn.enabled = NO;
            }else{
                _pandaDetaDataBtn.enabled = YES;
                [_pandaDetaDataBtn setBackgroundColor:LGDMianColor];
                [_pandaDetaDataBtn setTitle:@"立即参与" forState:UIControlStateNormal];
            }
        }else{
            _pandaDetaDataBtn.enabled = YES;
            [_pandaDetaDataBtn setBackgroundColor:LGDMianColor];
            [_pandaDetaDataBtn setTitle:@"立即参与" forState:UIControlStateNormal];
        }
      
    }
    return _pandaDetaDataBtn;
}
- (NSMutableArray *)pandaDetaDatalist{
    if (!_pandaDetaDatalist) {
        _pandaDetaDatalist = [NSMutableArray arrayWithArray:@[[NSString stringWithFormat:@"| %@",self.pandaItem.joinTime],[NSString stringWithFormat:@"| %@",self.pandaItem.playTime],[NSString stringWithFormat:@"| %@",self.pandaItem.loaction],[NSString stringWithFormat:@"| %@",self.pandaItem.phone]]];
    }
    return _pandaDetaDatalist;
}
- (PandaCatagroyDetailHeaderView *)pandaDetailHeader{
    if (!_pandaDetailHeader) {
        _pandaDetailHeader = [[PandaCatagroyDetailHeaderView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_Width, K(330)) ConfigWithModel:self.pandaItem];
        _pandaDetailHeader.delegate = self;
    }
    return _pandaDetailHeader;
}
- (PandaCatagaryDetailFooterView *)pandaDetaiFooter{
    if (!_pandaDetaiFooter) {
    _pandaDetaiFooter = [[PandaCatagaryDetailFooterView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_Width, K(109+29))];
    }
    return _pandaDetaiFooter;
}
- (UITableView *)pandaDetailTableView{
    if (!_pandaDetailTableView) {
        _pandaDetailTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, NaviH, SCREEN_Width, SCREEN_Height-NaviH-K(80)) style:UITableViewStylePlain];
        _pandaDetailTableView.showsVerticalScrollIndicator = NO;
        _pandaDetailTableView.showsHorizontalScrollIndicator = NO;
        _pandaDetailTableView.separatorStyle = UITableViewCellSelectionStyleNone;
        _pandaDetailTableView.backgroundColor = [UIColor clearColor];
        _pandaDetailTableView.delegate = self;
        _pandaDetailTableView.dataSource = self;
    }
    return _pandaDetailTableView;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.pandaDetaDatalist.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * pandaDetaLoactionIdentifer = @"PandaCatagrotDetailTableViewCell";
    PandaCatagrotDetailTableViewCell * pandaDetaLoactionCell = [tableView dequeueReusableCellWithIdentifier:pandaDetaLoactionIdentifer];
    if (pandaDetaLoactionCell == nil) {
        pandaDetaLoactionCell = [[PandaCatagrotDetailTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:pandaDetaLoactionIdentifer];
    }
    pandaDetaLoactionCell.PandaText = self.pandaDetaDatalist[indexPath.row];
    [pandaDetaLoactionCell PandaCatagrotDetailTableViewCellConfig:self.pandaDetaDatalist PandaIndex:indexPath];
    return pandaDetaLoactionCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(30);
}
-(void)pandaDetaDataBtnClick{
    if (![FilmFactoryToolModel FilmFactoryisLogin]) {
        [self PandanShowLoginVc];
        return;
    }
    PandaCatagrortyDetailJoinController * pandaDetaLoactVc  = [[PandaCatagrortyDetailJoinController alloc]init];
    pandaDetaLoactVc.pandaModel = self.pandaItem;
    pandaDetaLoactVc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:pandaDetaLoactVc animated:YES];
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
