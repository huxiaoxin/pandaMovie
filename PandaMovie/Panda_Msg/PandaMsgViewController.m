//
//  PandaMsgViewController.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/4.
//

#import "PandaMsgViewController.h"
#import "PandaMsgTableViewCell.h"
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
    
    // Do any additional setup after loading the view.
}
-(void)PandaClearBtnClick{
    NSLog(@"1111");
}
- (UITableView *)PandaMsgTableView{
    if (!_PandaMsgTableView) {
        _PandaMsgTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, NaviH, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-NaviH-GK_TABBAR_HEIGHT) style:UITableViewStylePlain];
        _PandaMsgTableView.delegate = self;
        _PandaMsgTableView.dataSource = self;
        _PandaMsgTableView.showsVerticalScrollIndicator = NO;
        _PandaMsgTableView.showsHorizontalScrollIndicator = NO;
        _PandaMsgTableView.backgroundColor = [UIColor clearColor];
        
    }
    return _PandaMsgTableView;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * PandaIdentifer = @"PandaMsgTableViewCell";
    PandaMsgTableViewCell * pandaCell = [tableView dequeueReusableCellWithIdentifier:PandaIdentifer];
    if (pandaCell == nil) {
        pandaCell = [[PandaMsgTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:PandaIdentifer];
    }
    return pandaCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(58);
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
