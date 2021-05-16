//
//  PandaSystemMsgViewController.m
//  PandaMovie
//
//  Created by codehzx on 2021/5/15.
//

#import "PandaSystemMsgViewController.h"
#import "PandaSysTemMsgDetailTableCell.h"
#import "PandasystemInfoDetailController.h"
@interface PandaSystemMsgViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong) UITableView * PandasystemTableView;
@property(nonatomic,strong) NSMutableArray * PandasystemDataArr;
@property(nonatomic,assign) BOOL Pandasystem;
@end

@implementation PandaSystemMsgViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"系统消息";
    self.Pandasystem = NO;
    [self.view addSubview:self.PandasystemTableView];
    // Do any additional setup after loading the view.
}
- (NSMutableArray *)PandasystemDataArr{
    if (!_PandasystemDataArr) {
        _PandasystemDataArr = [NSMutableArray array];
    }
    return _PandasystemDataArr;
}
-(void)PandasystemTableViewClick{
    MJWeakSelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        weakSelf.Pandasystem = YES;
        [weakSelf.PandasystemTableView reloadData];
        [weakSelf.PandasystemTableView.mj_header endRefreshing];
    });
}
-(UITableView *)PandasystemTableView{
    if (!_PandasystemTableView) {
        _PandasystemTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, NaviH, SCREEN_Width, SCREEN_Height-NaviH-GK_SAFEAREA_BTM) style:UITableViewStylePlain];
        _PandasystemTableView.delegate = self;
        _PandasystemTableView.dataSource = self;
        _PandasystemTableView.showsVerticalScrollIndicator = NO;
        _PandasystemTableView.showsHorizontalScrollIndicator = NO;
        _PandasystemTableView.separatorStyle = UITableViewCellSelectionStyleNone;
        _PandasystemTableView.backgroundColor = [UIColor clearColor];
        _PandasystemTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(PandasystemTableViewClick)];
        [_PandasystemTableView.mj_header beginRefreshing];
    }
    return _PandasystemTableView;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.Pandasystem ? 1 : 0;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * PandasystemIdentifer = @"PandaSysTemMsgDetailTableCell";
    PandaSysTemMsgDetailTableCell * PandasystemCell = [tableView dequeueReusableCellWithIdentifier:PandasystemIdentifer];
    if (PandasystemCell == nil) {
        PandasystemCell =[[PandaSysTemMsgDetailTableCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:PandasystemIdentifer];
    }
    return PandasystemCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return K(170);
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    PandasystemInfoDetailController * PandasystemDetailVc = [[PandasystemInfoDetailController alloc]init];
    PandasystemDetailVc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:PandasystemDetailVc animated:YES];
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
