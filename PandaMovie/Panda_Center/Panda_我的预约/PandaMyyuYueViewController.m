//
//  PandaCatagoryViewController.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/4.
//

#import "PandaMyyuYueViewController.h"
#import "PandanCatagroyTableViewCell.h"
#import "PadaCatagoryweizhiModel.h"
#import "PandaSystemMsgViewController.h"
#import "PandaCatagarotDetailController.h"
@interface PandaMyyuYueViewController ()<UITableViewDelegate,UITableViewDataSource,PandanCatagroyTableViewCellDelegate>
@property(nonatomic,strong) UITableView *  PandaCatagoryTableView;
@property(nonatomic,strong) NSMutableArray * PandaCatagoryDataArr;
@end

@implementation PandaMyyuYueViewController

- (NSMutableArray *)PandaCatagoryDataArr{
    if (!_PandaCatagoryDataArr) {
        _PandaCatagoryDataArr =[NSMutableArray array];
    }
    return _PandaCatagoryDataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"我的预约";
    [self.view addSubview:self.PandaCatagoryTableView];
 
    
    
    // Do any additional setup after loading the view.
}

- (UITableView *)PandaCatagoryTableView{
    if (!_PandaCatagoryTableView) {
        _PandaCatagoryTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, NaviH, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-NaviH-GK_SAFEAREA_BTM) style:UITableViewStylePlain];
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
    return self.PandaCatagoryDataArr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * PandaIdentifer  = @"PandanCatagroyTableViewCell";
    PandanCatagroyTableViewCell * PandaCell =[tableView dequeueReusableCellWithIdentifier:PandaIdentifer];
    if (PandaCell == nil) {
        PandaCell = [[PandanCatagroyTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:PandaIdentifer];
    }
    PandaCell.delegate = self;
    PandaCell.tag = indexPath.row;
    PandaCell.pandaModel  =self.PandaCatagoryDataArr[indexPath.row];
    return PandaCell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    PandaCatagarotDetailController * pandaDetailVc = [[PandaCatagarotDetailController alloc]init];
    pandaDetailVc.pandaItem = self.PandaCatagoryDataArr[indexPath.row];
    
    [self.navigationController pushViewController:pandaDetailVc animated:YES];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(160);
}
-(void)PandaCatagoryTableViewHeaderClick{
    MJWeakSelf;
    NSArray * dataArr = [WHC_ModelSqlite query:[PadaCatagoryweizhiModel class] where:[NSString stringWithFormat:@"isBaoming = '%@'",@(YES)]];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (self.PandaCatagoryDataArr.count > 0) {
            [self.PandaCatagoryDataArr removeAllObjects];
        }
        self.PandaCatagoryDataArr = dataArr.mutableCopy;
        [self.PandaCatagoryTableView reloadData];
        [weakSelf.PandaCatagoryTableView.mj_header endRefreshing];
    });
}
-(void)PandanCatagroyTableViewCellWithBtnClickCellInex:(NSInteger)cellIndex{
    PadaCatagoryweizhiModel * weizhiModle = self.PandaCatagoryDataArr[cellIndex];
    weizhiModle.isCollted = !weizhiModle.isCollted;
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD hide];
        [WHC_ModelSqlite update:[PadaCatagoryweizhiModel class] value:[NSString stringWithFormat:@"isCollted ='%@'",@(weizhiModle.isCollted)] where:[NSString stringWithFormat:@"LoactionID = '%ld'",weizhiModle.LoactionID]];
        [self.PandaCatagoryTableView reloadData];
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

