#import "PandaBaseTabbarViewController.h"

@interface PandaBaseTabbarViewController ()
@property(nonatomic,strong) NSMutableArray  * PandaMoviewClassArr;
@property(nonatomic,strong) NSMutableArray * PandaMoviewGoladArr;
@end

@implementation PandaBaseTabbarViewController

-(NSMutableArray *)PandaMoviewClassArr{
    if (!_PandaMoviewClassArr) {
        _PandaMoviewClassArr = [NSMutableArray arrayWithArray:@[@"PandaHomeViewController",@"PandaCatagoryViewController",@"PandaZoneViewController",@"PandaMsgViewController",@"PandaCenterViewController"]];
    }
    return _PandaMoviewClassArr;
}
-(NSMutableArray *)PandaMoviewGoladArr{
    if (!_PandaMoviewGoladArr) {
        _PandaMoviewGoladArr  = [NSMutableArray array];
    }
    return _PandaMoviewGoladArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor], NSFontAttributeName:[UIFont systemFontOfSize:11.0f]} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor], NSFontAttributeName:[UIFont systemFontOfSize:11.0f]} forState:UIControlStateSelected];
    NSArray * PandaMoviewNomalImgArr = @[@"panda_homenomal",@"panda_yuyuenomal",@"panda_zonenoaml",@"panda_msgnoaml",@"panda_centernomal"];
    NSArray * PandaMoviewSelImgArr = @[@"panda_homesel",@"panda_yuyuesel",@"panda_zonesel",@"panda_msgsel",@"panda_centersel"];
    NSArray  * PandaMoviewTitlArr = @[@"首页",@"活动",@"动态",@"消息",@"我的"];
    for (int index = 0 ; index < self.PandaMoviewClassArr.count ; index ++) {
        UIViewController * PandaMoviewVc = [(UIViewController *)[NSClassFromString(_PandaMoviewClassArr[index]) alloc]init];
        UIImage *PandaMoviewNomal = [UIImage imageNamed:PandaMoviewNomalImgArr[index]];
        UIImage *PandaMoviewSeltecd = [UIImage imageNamed:PandaMoviewSelImgArr[index]];
        PandaMoviewVc.tabBarItem.image = [PandaMoviewNomal imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        PandaMoviewVc.tabBarItem.selectedImage = [PandaMoviewSeltecd imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        PandaMoviewVc.tabBarItem.title =  PandaMoviewTitlArr[index];
        UINavigationController  *WindwoundNav = [UINavigationController rootVC:PandaMoviewVc translationScale:NO];
        [self.PandaMoviewGoladArr addObject:WindwoundNav];
    }
    GKNavigationBarConfigure *PandaMoviewConfiger = [GKNavigationBarConfigure sharedInstance];
    [PandaMoviewConfiger setupDefaultConfigure];
    PandaMoviewConfiger.backStyle = GKNavigationBarBackStyleWhite;
    PandaMoviewConfiger.backgroundColor = LGDViewBJColor;
    PandaMoviewConfiger.titleColor = [UIColor whiteColor];
    PandaMoviewConfiger.titleFont = [UIFont boldSystemFontOfSize:18];
    PandaMoviewConfiger.gk_navItemLeftSpace = K(15);
    
    self.viewControllers = _PandaMoviewGoladArr;
    self.tabBar.barTintColor = LGDViewBJColor;
    //这里的self是UITabBarController，LGDViewBJColor根据各自的TabBar定义而定
    self.tabBar.tintColor = LGDViewBJColor;
    self.tabBar.translucent =NO;
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




