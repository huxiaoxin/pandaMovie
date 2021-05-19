//
//  PandaSearchingResultViewController.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/5.
//

#import "PandaSearchingResultViewController.h"
#import "PandaGoodFilmTableViewCell.h"
#import "PandaMovieModel.h"
@interface PandaSearchingResultViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong) UITableView    *  PandaHotTableView;
@property(nonatomic,strong) NSMutableArray * PandaHotDataArr;
@end

@implementation PandaSearchingResultViewController
- (NSMutableArray *)PandaHotDataArr{
    if (!_PandaHotDataArr) {
        _PandaHotDataArr = [NSMutableArray array];
    }
    return _PandaHotDataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"搜索结果";
    [self.view addSubview:self.PandaHotTableView];
    // Do any additional setup after loading the view.
}
-(UITableView *)PandaHotTableView{
    if (!_PandaHotTableView) {
        _PandaHotTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, NaviH, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-NaviH-GK_SAFEAREA_BTM) style:UITableViewStylePlain];
        _PandaHotTableView.delegate = self;
        _PandaHotTableView.dataSource = self;
        _PandaHotTableView.showsVerticalScrollIndicator = NO;
        _PandaHotTableView.showsHorizontalScrollIndicator = NO;
        _PandaHotTableView.backgroundColor = [UIColor clearColor];
        _PandaHotTableView.separatorStyle = UITableViewCellSelectionStyleNone;
        _PandaHotTableView.mj_header =[MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(PandaHotTableViewHeaderClick)];
        [_PandaHotTableView.mj_header beginRefreshing];
    }
    return _PandaHotTableView;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PandaHotDataArr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * PandaHotIdentifer = @"PandaGoodFilmTableViewCell";
    PandaGoodFilmTableViewCell * PandaCell = [tableView dequeueReusableCellWithIdentifier:PandaHotIdentifer];
    if (PandaCell == nil) {
        PandaCell = [[PandaGoodFilmTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:PandaHotIdentifer];
    }
    PandaCell.pandamodel = self.PandaHotDataArr[indexPath.row];
    return PandaCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(110);
}
-(void)PandaHotTableViewHeaderClick{
    MJWeakSelf;
    NSArray * dataArr = [WHC_ModelSqlite query:[PandaMovieModel class] where:[NSString stringWithFormat:@"FilmID = '%ld'",self.pandaSearchID]];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (weakSelf.PandaHotDataArr.count > 0) {
            [weakSelf.PandaHotDataArr removeAllObjects];
        }
        weakSelf.PandaHotDataArr = dataArr.mutableCopy;
        [weakSelf.PandaHotTableView reloadData];
        [weakSelf.PandaHotTableView.mj_header endRefreshing];
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


