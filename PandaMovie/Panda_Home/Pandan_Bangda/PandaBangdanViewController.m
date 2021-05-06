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
    UIImageView * PandaHeaderImgView =[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(150)+GK_SAFEAREA_TOP)];
    PandaHeaderImgView.image = [UIImage imageNamed:@"ttttt"];
    [_PandaBangdanTableView addSubview:PandaHeaderImgView];
    
    UIView * Taleheader = [[UIView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(150+30))];
    Taleheader.backgroundColor = [UIColor clearColor];
    _PandaBangdanTableView.tableHeaderView = Taleheader;

}
- (UITableView *)PandaBangdanTableView{
    if (!_PandaBangdanTableView) {
        _PandaBangdanTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_SAFEAREA_BTM) style:UITableViewStylePlain];
        _PandaBangdanTableView.delegate = self;
        _PandaBangdanTableView.dataSource = self;
        _PandaBangdanTableView.showsVerticalScrollIndicator = NO;
        _PandaBangdanTableView.showsHorizontalScrollIndicator = NO;
        _PandaBangdanTableView.separatorStyle = UITableViewCellSelectionStyleNone;
        _PandaBangdanTableView.backgroundColor  = [UIColor colorWithHexString:@"#2D2259"];
        _PandaBangdanTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(PandaBangdanTableViewHeaderClicks)];
        [_PandaBangdanTableView.mj_header beginRefreshing];
    }
    return _PandaBangdanTableView;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * PandaBangIdentifer = @"PandaBangdanTableViewCell";
    PandaBangdanTableViewCell * pandanCell  = [tableView dequeueReusableCellWithIdentifier:PandaBangIdentifer];
    if (pandanCell == nil) {
        pandanCell = [[PandaBangdanTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:PandaBangIdentifer];
    }
    if (indexPath.row%2 == 0) {
        pandanCell.backgroundColor = [UIColor colorWithHexString:@"353443"];
    }else{
        pandanCell.backgroundColor = [UIColor colorWithHexString:@"2B2934"];
    }
    if (indexPath.row == 0) {
        pandanCell.PandaNumlb.text =@"";
        pandanCell.PandaTopimgView.hidden = NO;
        pandanCell.PandaTopimgView.image = [UIImage imageNamed:@"guanjun"];
    }else if (indexPath.row == 1){
        pandanCell.PandaNumlb.text =@"";
        pandanCell.PandaTopimgView.image = [UIImage imageNamed:@"jijun"];

        pandanCell.PandaTopimgView.hidden = NO;
    }else if (indexPath.row == 2){
        pandanCell.PandaNumlb.text =@"";
        pandanCell.PandaTopimgView.image = [UIImage imageNamed:@"yajun"];

        pandanCell.PandaTopimgView.hidden = NO;
    }else{
        pandanCell.PandaNumlb.text = [NSString stringWithFormat:@"%ld",indexPath.row+1];
        pandanCell.PandaTopimgView.hidden = YES;
    }
    return pandanCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(60);
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return RealWidth(40);
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView * myView = [UIView new];
    myView.backgroundColor = [UIColor clearColor];
    
    UIView * subView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(40))];
    subView.backgroundColor = [UIColor colorWithHexString:@"#2B2934"];
    [subView acs_radiusWithRadius:RealWidth(15) corner:UIRectCornerTopLeft |UIRectCornerTopRight];
    [myView addSubview:subView];
    
    UILabel *  PandaFirstlb = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH/4, RealWidth(40))];
    PandaFirstlb.textAlignment = NSTextAlignmentCenter;
    PandaFirstlb.textColor = [UIColor colorWithHexString:@"9F9FA5"];
    PandaFirstlb.text =@"影片";
    PandaFirstlb.font = [UIFont systemFontOfSize:12];
    [subView addSubview:PandaFirstlb];
    
    
    UILabel *  PandaSecondlb = [[UILabel alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH/4, 0, GK_SCREEN_WIDTH/4, RealWidth(40))];
    PandaSecondlb.textAlignment = NSTextAlignmentCenter;
    PandaSecondlb.textColor = [UIColor colorWithHexString:@"9F9FA5"];
    PandaSecondlb.text =@"综合票房";
    PandaSecondlb.font = [UIFont systemFontOfSize:12];

    [subView addSubview:PandaSecondlb];
    
    UILabel *  PandaThreelb = [[UILabel alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH/4*2, 0, GK_SCREEN_WIDTH/4, RealWidth(40))];
    PandaThreelb.textAlignment = NSTextAlignmentCenter;
    PandaThreelb.textColor = [UIColor colorWithHexString:@"9F9FA5"];
    PandaThreelb.text =@"票房占比";
    PandaThreelb.font = [UIFont systemFontOfSize:12];

    [subView addSubview:PandaThreelb];
    
    
    UILabel *  PandaFourelb = [[UILabel alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH/4*3, 0, GK_SCREEN_WIDTH/4, RealWidth(40))];
    PandaFourelb.textAlignment = NSTextAlignmentCenter;
    PandaFourelb.textColor = [UIColor colorWithHexString:@"9F9FA5"];
    PandaFourelb.text =@"拍片场次";
    PandaFourelb.font = [UIFont systemFontOfSize:12];
    [subView addSubview:PandaFourelb];
    return myView;
}
-(void)PandaBangdanTableViewHeaderClicks{
    MJWeakSelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [weakSelf.PandaBangdanTableView.mj_header endRefreshing];
    });
    //#2B2934
    //353443

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
