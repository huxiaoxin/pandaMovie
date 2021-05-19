#import "PandasystemInfoDetailController.h"

@interface PandasystemInfoDetailController ()

@end

@implementation PandasystemInfoDetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"详情";
    
    UILabel * PandasystemFirstlb = [[UILabel alloc]initWithFrame:CGRectMake(0, NaviH+K(10), SCREEN_Width, K(18))];
    PandasystemFirstlb.textColor = [UIColor whiteColor];
    PandasystemFirstlb.textAlignment = NSTextAlignmentCenter;
    PandasystemFirstlb.font = [UIFont systemFontOfSize:K(15)];
    PandasystemFirstlb.text=  @"关于5月3号熊猫追剧维护公告";
    [self.view addSubview:PandasystemFirstlb];
    
    CGRect PandasystemInfoRect = [@"尊敬的用户，您好～！\n因服务器升级需要，熊猫追剧将于2021年5月29号服务器停机进行升级，届时app将无法访问大概有半个小时左右，还请大家稍安伪造等待一下，感谢各位的配合与支持，谢谢～" cxl_sizeWithMoreString:[UIFont systemFontOfSize:14] maxWidth:SCREEN_Width-K(20)];
    UILabel * PandasystemInfolb =[[UILabel alloc]initWithFrame:CGRectMake(K(10), CGRectGetMaxY(PandasystemFirstlb.frame)+K(10), PandasystemInfoRect.size.width, PandasystemInfoRect.size.height)];
    PandasystemInfolb.numberOfLines = 0;
    PandasystemInfolb.font = [UIFont systemFontOfSize:14];
    PandasystemInfolb.textColor = [UIColor whiteColor];
    PandasystemInfolb.text = @"尊敬的用户，您好～！\n因服务器升级需要，熊猫追剧将于2021年5月3号服务器停机进行升级，届时app将无法访问大概有半个小时左右，还请大家稍安伪造等待一下，感谢各位的配合与支持，谢谢～";
    [self.view addSubview:PandasystemInfolb];
    
    UILabel *  PandasystemInfoDeeplb = [[UILabel alloc]initWithFrame:CGRectMake(SCREEN_Width-K(130), CGRectGetMaxY(PandasystemInfolb.frame)+K(10), K(120), K(14))];
    PandasystemInfoDeeplb.textAlignment = NSTextAlignmentRight;
    PandasystemInfoDeeplb.font = [UIFont systemFontOfSize:12];
    PandasystemInfoDeeplb.textColor =[UIColor whiteColor];
    PandasystemInfoDeeplb.text = @"熊猫追剧";
    [self.view addSubview:PandasystemInfoDeeplb];
    
    // Do any additional setup after loading the view.
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
