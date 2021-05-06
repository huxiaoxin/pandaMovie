//
//  PandaHotComentViewController.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/5.
//

#import "PandaHotComentViewController.h"
#import "PandaHotComentTableViewCell.h"
@interface PandaHotComentViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong) UITableView    *  PandaHotTableView;
@property(nonatomic,strong) NSMutableArray * PandaHotDataArr;
@end

@implementation PandaHotComentViewController
- (NSMutableArray *)PandaHotDataArr{
    if (!_PandaHotDataArr) {
        _PandaHotDataArr = [NSMutableArray array];
    }
    return _PandaHotDataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"熊猫好片";
    [self.view addSubview:self.PandaHotTableView];
    // Do any additional setup after loading the view.
}
- (UITableView *)PandaHotTableView{
    if (!_PandaHotTableView) {
        _PandaHotTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, NaviH, GK_SCREEN_WIDTH, GK_NAVBAR_HEIGHT-NaviH-GK_SAFEAREA_BTM) style:UITableViewStylePlain];
        _PandaHotTableView.delegate = self;
        _PandaHotTableView.dataSource = self;
        _PandaHotTableView.showsVerticalScrollIndicator = NO;
        _PandaHotTableView.showsHorizontalScrollIndicator = NO;
        _PandaHotTableView.backgroundColor = [UIColor clearColor];
        _PandaHotTableView.separatorStyle = UITableViewCellSelectionStyleNone;
    }
    return _PandaHotTableView;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * PandaHotIdentifer = @"PandaHotComentTableViewCell";
    PandaHotComentTableViewCell * PandaCell = [tableView dequeueReusableCellWithIdentifier:PandaHotIdentifer];
    if (PandaCell == nil) {
        PandaCell = [[PandaHotComentTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:PandaHotIdentifer];
    }
    return PandaCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(150);
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
