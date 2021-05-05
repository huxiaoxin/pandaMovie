//
//  PandaBangdanViewController.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/5.
//

#import "PandaBangdanViewController.h"
#import "PandaBangdanTableViewCell.h"
@interface PandaBangdanViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong) UITableView * PandaBangdanTableView;
@end

@implementation PandaBangdanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navBarAlpha = 0;
    self.gk_navTitle = @"热门榜单";
    [self.view addSubview:self.PandaBangdanTableView];
    // Do any additional setup after loading the view.
}
- (UITableView *)PandaBangdanTableView{
    if (!_PandaBangdanTableView) {
        _PandaBangdanTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_SAFEAREA_BTM) style:UITableViewStylePlain];
        _PandaBangdanTableView.delegate = self;
        _PandaBangdanTableView.dataSource = self;
        _PandaBangdanTableView.showsVerticalScrollIndicator = NO;
        _PandaBangdanTableView.showsHorizontalScrollIndicator = NO;
        _PandaBangdanTableView.separatorStyle = UITableViewCellSelectionStyleNone;
        _PandaBangdanTableView.backgroundColor  =[UIColor clearColor];
        _PandaBangdanTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(PandaBangdanTableViewHeaderClicks)];
        [_PandaBangdanTableView.mj_header beginRefreshing];
    }
    return _PandaBangdanTableView;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * PandaBangIdentifer = @"PandaBangdanTableViewCell";
    PandaBangdanTableViewCell * pandanCell  = [tableView dequeueReusableCellWithIdentifier:PandaBangIdentifer];
    if (pandanCell == nil) {
        pandanCell = [[PandaBangdanTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:PandaBangIdentifer];
    }
    return pandanCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(120);
}
-(void)PandaBangdanTableViewHeaderClicks{
    MJWeakSelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [weakSelf.PandaBangdanTableView.mj_header endRefreshing];
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
