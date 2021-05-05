//
//  PandaBaseViewController.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/4.
//

#import "PandaBaseViewController.h"
#import "PandaLoginViewController.h"
@interface PandaBaseViewController ()

@end

@implementation PandaBaseViewController
-(void)PandanShowLoginVc{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        PandaLoginViewController * pandaLoginVc = [[PandaLoginViewController alloc]init];
        UINavigationController * pandanNav = [UINavigationController rootVC:pandaLoginVc translationScale:YES];
        [self presentViewController:pandanNav animated:YES completion:nil];
    });
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor  =  LGDViewBJColor;
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
