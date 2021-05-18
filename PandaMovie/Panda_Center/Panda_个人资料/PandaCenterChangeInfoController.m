//
//  PandaCenterChangeInfoController.m

//
//  Created by zjlk03 on 2021/4/23.
//

#import "PandaCenterChangeInfoController.h"
#import "UITextField+AddPlaceholder.h"
@interface PandaCenterChangeInfoController ()
@property(nonatomic,strong) UITextField * PandaTextField;
@end

@implementation PandaCenterChangeInfoController

-(void)PandaCommitBtnClick{
    if (_PandaTextField.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"没有修改任何内容"];
        return;
    }
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [[NSUserDefaults standardUserDefaults] setObject:self->_PandaTextField.text forKey:@"PandaMovieName"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [LCProgressHUD showSuccess:@"修改成功"];
        [self.navigationController popViewControllerAnimated:YES];
    });
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"修改信息";
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIView * PandaCommitView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, K(80), K(60))];
    UIButton * PandaCommitBtn = [[UIButton alloc]initWithFrame:CGRectMake(K(20), K(12), K(40), K(20))];
    [PandaCommitBtn setTitle:@"提交" forState:UIControlStateNormal];
    [PandaCommitBtn setTitleColor:LGDBLackColor forState:UIControlStateNormal];
    PandaCommitBtn.titleLabel.font =[UIFont systemFontOfSize:14];
    [PandaCommitBtn addTarget:self action:@selector(PandaCommitBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [PandaCommitView addSubview:PandaCommitBtn];
    
    self.gk_navRightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:PandaCommitView];
    
    UIView * PandaInfoInputView = [[UIView alloc]initWithFrame:CGRectMake(K(15), NaviH+K(15), SCREEN_Width-K(30), K(40))];
    PandaInfoInputView.backgroundColor = LGDLightGaryColor;
    PandaInfoInputView.layer.cornerRadius =K(5);
    PandaInfoInputView.layer.masksToBounds = YES;
    [self.view addSubview:PandaInfoInputView];
    
    UITextField * PandaTextField = [[UITextField alloc]initWithFrame:CGRectMake(K(10), 0, SCREEN_Width-K(40), K(40))];
    PandaTextField.backgroundColor = LGDLightGaryColor;
    PandaTextField.layer.cornerRadius =K(5);
    PandaTextField.layer.masksToBounds = YES;
    [PandaTextField addPlaceholders:[UIFont systemFontOfSize:14] holderStr:@"输入昵称" holderColor:LGDGaryColor];
    [PandaInfoInputView addSubview:PandaTextField];
    _PandaTextField=  PandaTextField;
    
    UILabel  * PandaInfoInputlb = [[UILabel alloc]initWithFrame:CGRectMake(K(15), CGRectGetMaxY(PandaInfoInputView.frame)+K(10), SCREEN_Width-K(30), K(14))];
    PandaInfoInputlb.textColor = LGDGaryColor;
    PandaInfoInputlb.font =[UIFont systemFontOfSize:12];
    [self.view addSubview:PandaInfoInputlb];
    
    //
    
    NSTextAttachment * attment = [[NSTextAttachment alloc]init];
    attment.image = [UIImage imageNamed:@"tishi"];
    attment.bounds = CGRectMake(0, -2, K(14), K(14));
    NSAttributedString * attbute = [NSAttributedString attributedStringWithAttachment:attment];
    NSMutableAttributedString * mutablAtt = [[NSMutableAttributedString alloc]initWithString:@" 最多输入15个字符，字母开头，设置后不能修改"];
    [mutablAtt insertAttributedString:attbute atIndex:0];
    PandaInfoInputlb.attributedText = mutablAtt;
    // Do any additional setup after loading the view.
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [PandaTextField becomeFirstResponder];
    });
}
-(void)viewWillDisappear:(BOOL)animated{
    [[GKNavigationBarConfigure sharedInstance] updateConfigure:^(GKNavigationBarConfigure *configure) {
        configure.backgroundColor = LGDViewBJColor;
        configure.backStyle = GKNavigationBarBackStyleWhite;
        configure.titleColor = [UIColor whiteColor];
    }];
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
