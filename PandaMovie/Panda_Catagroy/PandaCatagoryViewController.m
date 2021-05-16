//
//  PandaCatagoryViewController.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/4.
//

#import "PandaCatagoryViewController.h"
#import "PandanCatagroyTableViewCell.h"
#import "PandaSystemMsgViewController.h"
@interface PandaCatagoryViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong) UITableView *  PandaCatagoryTableView;
@property(nonatomic,strong) NSMutableArray * PandaCatagoryDataArr;
@end

@implementation PandaCatagoryViewController

- (NSMutableArray *)PandaCatagoryDataArr{
    if (!_PandaCatagoryDataArr) {
        _PandaCatagoryDataArr =[NSMutableArray array];
    }
    return _PandaCatagoryDataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"电影";
    [self.view addSubview:self.PandaCatagoryTableView];
    
    
    self.gk_navItemLeftSpace = RealWidth(15);
    self.gk_navItemRightSpace = RealWidth(15);

    UILabel * PandaLeftlb = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, RealWidth(60), RealWidth(30))];
    PandaLeftlb.userInteractionEnabled = YES;
    PandaLeftlb.font = [UIFont systemFontOfSize:12];
    PandaLeftlb.textColor = [UIColor whiteColor];
    
    UITapGestureRecognizer * PandaleftTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(PandaleftTapClick)];
    [PandaLeftlb addGestureRecognizer:PandaleftTap];
    
    NSTextAttachment * pandaTextMent = [[NSTextAttachment alloc]init];
    pandaTextMent.image = [UIImage imageNamed:@"location"];
    pandaTextMent.bounds =  CGRectMake(0, 0, RealWidth(20), RealWidth(20));
    NSAttributedString * pandaAttbute = [NSAttributedString attributedStringWithAttachment:pandaTextMent];
    NSMutableAttributedString * pandaMutableAttbute = [[NSMutableAttributedString alloc]initWithString:@"上海"];
    [pandaMutableAttbute addAttribute:NSBaselineOffsetAttributeName value:@(5) range:NSMakeRange(0, 2)];
    [pandaMutableAttbute insertAttributedString:pandaAttbute atIndex:0];
    PandaLeftlb.attributedText = pandaMutableAttbute;
    self.gk_navLeftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:PandaLeftlb];
    
    
    
    UIButton * PandaMsgBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [PandaMsgBtn addTarget:self action:@selector(PandaMsgBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [PandaMsgBtn setImage:[UIImage imageNamed:@"xiaoxi"] forState:UIControlStateNormal];
    self.gk_navRightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:PandaMsgBtn];

    
    
    
    // Do any additional setup after loading the view.
}
-(void)PandaMsgBtnClick{
    PandaSystemMsgViewController * pandasysTemVc = [[PandaSystemMsgViewController alloc]init];
    pandasysTemVc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:pandasysTemVc animated:YES];
    
}
-(void)PandaleftTapClick{
    [LCProgressHUD showInfoMsg:@"目前只开放上海城市"];
}
- (UITableView *)PandaCatagoryTableView{
    if (!_PandaCatagoryTableView) {
        _PandaCatagoryTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, NaviH, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-NaviH-GK_TABBAR_HEIGHT) style:UITableViewStylePlain];
        _PandaCatagoryTableView.backgroundColor = [UIColor clearColor];
        _PandaCatagoryTableView.delegate = self;
        _PandaCatagoryTableView.dataSource = self;
        _PandaCatagoryTableView.showsVerticalScrollIndicator = NO;
        _PandaCatagoryTableView.showsHorizontalScrollIndicator = NO;
        _PandaCatagoryTableView.separatorStyle = UITableViewCellSelectionStyleNone;
        _PandaCatagoryTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(PandaCatagoryTableViewHeaderClick)];
        [_PandaCatagoryTableView.mj_header beginRefreshing];
    }
    return _PandaCatagoryTableView;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * PandaIdentifer  = @"PandanCatagroyTableViewCell";
    PandanCatagroyTableViewCell * PandaCell =[tableView dequeueReusableCellWithIdentifier:PandaIdentifer];
    if (PandaCell == nil) {
        PandaCell = [[PandanCatagroyTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:PandaIdentifer];
    }
    return PandaCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(160);
}
-(void)PandaCatagoryTableViewHeaderClick{
    MJWeakSelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [weakSelf.PandaCatagoryTableView.mj_header endRefreshing];
    });
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
