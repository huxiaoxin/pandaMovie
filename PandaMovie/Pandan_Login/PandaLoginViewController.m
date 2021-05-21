//
//  PandaLoginViewController.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/4.
//

#import "PandaLoginViewController.h"
#import "UITextField+AddPlaceholder.h"
#import "PandaAboutusViewController.h"
@interface PandaLoginViewController ()
{
    UITextField * _PandaPhoneTextField;
    UITextField * _PandaPasswordTextField;
    UIButton    * _PandaSendCodeBtn;
    NSTimer    *    _PandaMovieTimer;
    NSInteger     _PandaMovieNums;
}
@end

@implementation PandaLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.gk_navBarAlpha = 0;
    _PandaMovieNums = 60;
    
    UIImageView * PandabackImgView = [[UIImageView alloc]initWithFrame:self.view.bounds];
    PandabackImgView.image = [UIImage imageNamed:@"pandaback1"];
    [self.view addSubview:PandabackImgView];
    
    self.gk_navItemLeftSpace = RealWidth(20);
    UIButton * backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn setImage:[UIImage imageNamed:@"guanbi"] forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(backBtnClick) forControlEvents:UIControlEventTouchUpInside];
    self.gk_navLeftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:backBtn];
    self.gk_navTitle =  @"登录";
    
    
    UIImageView * PandaLogoImgView = [[UIImageView alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH/2-RealWidth(35), GK_STATUSBAR_NAVBAR_HEIGHT+RealWidth(50), RealWidth(70), RealWidth(70))];
    PandaLogoImgView.layer.cornerRadius = RealWidth(35);
    PandaLogoImgView.layer.masksToBounds =YES;
    PandaLogoImgView.image = [UIImage imageNamed:@"homelogo"];
    [self.view addSubview:PandaLogoImgView];
    
    
    
    
    UIView * PandaPhoneView = [[UIView alloc]initWithFrame:CGRectMake(RealWidth(20), CGRectGetMaxY(PandaLogoImgView.frame)+RealWidth(40), GK_SCREEN_WIDTH-RealWidth(40), RealWidth(45))];
    PandaPhoneView.layer.cornerRadius = RealWidth(5);
    PandaPhoneView.layer.masksToBounds = YES;
    [PandaPhoneView setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:PandaPhoneView];
    
    
    
    UIView * PandaPasswordView = [[UIView alloc]initWithFrame:CGRectMake(RealWidth(20), CGRectGetMaxY(PandaPhoneView.frame)+RealWidth(30), GK_SCREEN_WIDTH-RealWidth(40), RealWidth(45))];
    PandaPasswordView.layer.cornerRadius = RealWidth(5);
    PandaPasswordView.layer.masksToBounds = YES;
    [PandaPasswordView setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:PandaPasswordView];
    
    
    UILabel * pandaAccountlb  = [self PandaCofiguarleftText:@"账户:" lbFrame:CGRectMake(RealWidth(10), 0, RealWidth(60), RealWidth(45))];
    [PandaPhoneView addSubview:pandaAccountlb];
    
    UILabel * pandaPasswordlb  = [self PandaCofiguarleftText:@"验证码:" lbFrame:CGRectMake(RealWidth(10), 0, RealWidth(60), RealWidth(45))];
    [PandaPasswordView addSubview:pandaPasswordlb];
    
    
    UITextField * PandaPhoneTextField = [[UITextField alloc]initWithFrame:CGRectMake(CGRectGetMaxX(pandaAccountlb.frame)+RealWidth(10), 0, CGRectGetWidth(PandaPhoneView.frame)-CGRectGetMaxX(pandaAccountlb.frame)-RealWidth(10), RealWidth(45))];
    PandaPhoneTextField.tintColor =  LGDMianColor;
    PandaPhoneTextField.textColor  =[UIColor blackColor];
    PandaPhoneTextField.font = [UIFont boldSystemFontOfSize:17];
    PandaPhoneTextField.keyboardType =  UIKeyboardTypeNumberPad;
    PandaPhoneTextField.clearButtonMode = UITextFieldViewModeAlways;
    [PandaPhoneTextField addPlaceholders:[UIFont systemFontOfSize:15] holderStr:@"请输入手机号" holderColor:[UIColor colorWithHexString:@"8a8a8a"]];
    [PandaPhoneView addSubview:PandaPhoneTextField];
    _PandaPhoneTextField = PandaPhoneTextField;
    
    
    UIButton * PandaSendCodeBtn = [[UIButton alloc]initWithFrame:CGRectMake(CGRectGetWidth(PandaPasswordView.frame)-RealWidth(70), RealWidth(10), RealWidth(60), RealWidth(25))];
    [PandaSendCodeBtn setTitle:@"验证码" forState:UIControlStateNormal];
    PandaSendCodeBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [PandaSendCodeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [PandaSendCodeBtn setBackgroundColor:LGDMianColor];
    PandaSendCodeBtn.layer.cornerRadius = RealWidth(5);
    PandaSendCodeBtn.layer.masksToBounds = YES;
    PandaSendCodeBtn.titleLabel.font = [UIFont systemFontOfSize:13];
    [PandaSendCodeBtn addTarget:self action:@selector(PandaSendCodeBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [PandaPasswordView addSubview:PandaSendCodeBtn];
    _PandaSendCodeBtn = PandaSendCodeBtn;
    
    
    UITextField * PandaPasswordTextField = [[UITextField alloc]initWithFrame:CGRectMake(CGRectGetMaxX(pandaPasswordlb.frame)+RealWidth(10), 0, CGRectGetWidth(PandaPhoneView.frame)-CGRectGetMaxX(pandaAccountlb.frame)-RealWidth(10)-RealWidth(70), RealWidth(45))];
    PandaPasswordTextField.tintColor =  LGDMianColor;
    PandaPasswordTextField.textColor  =[UIColor blackColor];
    PandaPasswordTextField.font = [UIFont boldSystemFontOfSize:17];
    PandaPasswordTextField.keyboardType =  UIKeyboardTypeNumberPad;
    PandaPasswordTextField.clearButtonMode = UITextFieldViewModeAlways;
    [PandaPasswordTextField addPlaceholders:[UIFont systemFontOfSize:15] holderStr:@"请输入验证码" holderColor:[UIColor colorWithHexString:@"8a8a8a"]];
    [PandaPasswordView addSubview:PandaPasswordTextField];
    _PandaPasswordTextField = PandaPasswordTextField;
    
    
    UIButton * PandaLoginbtn = [[UIButton alloc]initWithFrame:CGRectMake(RealWidth(20), CGRectGetMaxY(PandaPasswordView.frame)+RealWidth(30), GK_SCREEN_WIDTH-RealWidth(40), RealWidth(45))];
    [PandaLoginbtn setBackgroundColor:LGDMianColor];
    PandaLoginbtn.titleLabel.font = [UIFont boldSystemFontOfSize:17];
    PandaLoginbtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [PandaLoginbtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [PandaLoginbtn setTitle:@"登录" forState:UIControlStateNormal];
    [PandaLoginbtn addTarget:self action:@selector(PandaLoginbtnClick) forControlEvents:UIControlEventTouchUpInside];
    PandaLoginbtn.layer.cornerRadius = RealWidth(5);
    PandaLoginbtn.layer.masksToBounds = YES;
    [self.view addSubview:PandaLoginbtn];
    
    
    UILabel * PandaTpislb = [[UILabel alloc]initWithFrame:CGRectMake(RealWidth(20), CGRectGetMaxY(PandaLoginbtn.frame)+RealWidth(10), RealWidth(200), RealWidth(15))];
    PandaTpislb.textColor  = [UIColor whiteColor];
    PandaTpislb.font = [UIFont systemFontOfSize:13];
    [self.view addSubview:PandaTpislb];
    NSTextAttachment * attment = [[NSTextAttachment alloc]init];
    attment.image = [UIImage imageNamed:@"tishi_login"];
    attment.bounds = CGRectMake(0, -4, K(14), K(14));
    NSAttributedString * attbute = [NSAttributedString attributedStringWithAttachment:attment];
    NSMutableAttributedString * mutablAtt = [[NSMutableAttributedString alloc]initWithString:@" 首次登录默认自动注册!"];
    [mutablAtt insertAttributedString:attbute atIndex:0];
    PandaTpislb.attributedText = mutablAtt;
    
    
    
    
    UILabel * PandauserAgementlb = [[UILabel alloc]initWithFrame:CGRectMake(0, GK_SCREEN_HEIGHT-GK_SAFEAREA_BTM-RealWidth(30), GK_SCREEN_WIDTH, RealWidth(30))];
    PandauserAgementlb.textAlignment = NSTextAlignmentCenter;
    PandauserAgementlb.textColor = [UIColor whiteColor];
    PandauserAgementlb.font = [UIFont systemFontOfSize:13];
    PandauserAgementlb.userInteractionEnabled = YES;
    [self.view addSubview:PandauserAgementlb];
    NSString  * pandaFirstText  = @"登录即表示您同意";
    NSString  * pandaSecondText = @" 《用户使用协议》";
    NSMutableAttributedString * PandaAgementAttbure = [[NSMutableAttributedString alloc]initWithString:[NSString stringWithFormat:@"%@%@",pandaFirstText,pandaSecondText]];
    [PandaAgementAttbure addAttribute:NSForegroundColorAttributeName value:[UIColor whiteColor] range:NSMakeRange(0, pandaFirstText.length)];
    [PandaAgementAttbure addAttribute:NSForegroundColorAttributeName value:LGDMianColor range:NSMakeRange(pandaFirstText.length, pandaSecondText.length)];
    PandauserAgementlb.attributedText =  PandaAgementAttbure;
    UITapGestureRecognizer * PandaTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(PandaAgementAttbureTapClick)];
    [PandauserAgementlb addGestureRecognizer:PandaTap];
    
    
    //pandaloginback
    // Do any additional setup after loading the view.
}
-(void)PandaAgementAttbureTapClick{
    PandaAboutusViewController * pandaAboutVc = [[PandaAboutusViewController alloc]init];
    
    [self.navigationController pushViewController:pandaAboutVc animated:YES];
    
}
-(UILabel *)PandaCofiguarleftText:(NSString *)leftText lbFrame:(CGRect)lbFrame{
    UILabel * pandalb =[[UILabel alloc]initWithFrame:lbFrame];
    pandalb.text = leftText;
    pandalb.textColor = [UIColor blackColor];
    pandalb.font = [UIFont  boldSystemFontOfSize:17];
    //    pandalb.textAlignment = NSTextAlignmentCenter;
    return pandalb;
}
-(void)PandaLoginbtnClick{
    if (_PandaPhoneTextField.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"请输入手机号"];
        return;
    }
    if (_PandaPhoneTextField.text.length != 11) {
        [LCProgressHUD showInfoMsg:@"请输入正确的手机号"];
        return;
    }
    if (_PandaPasswordTextField.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"请输入验证码或密码"];
        return;
    }
    [LCProgressHUD showLoading:@""];
    MJWeakSelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if ([self->_PandaPhoneTextField.text isEqualToString:@"15068761251"] && [self->_PandaPasswordTextField.text isEqualToString:@"0986"]) {
            [PandaMovieLoginAccoutModel PandaMovieLoginsuccedAction];
            [[NSNotificationCenter defaultCenter] postNotificationName:@"PandaMovieLoginSucced" object:nil];
            
            [LCProgressHUD showSuccess:@"登录成功"];
            [weakSelf dismissViewControllerAnimated:YES completion:nil];
        }else{
            [LCProgressHUD showInfoMsg:@"密码错误"];
        }
        
    });
    
}
-(void)PandaSendCodeBtnClick{
    if (_PandaPhoneTextField.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"请输入手机号"];
        return;
    }
    if (_PandaPhoneTextField.text.length != 11) {
        [LCProgressHUD showInfoMsg:@"请输入正确的手机号"];
        return;
    }
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD showInfoMsg:@"发送成功"];
        self->_PandaMovieTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(FilmFacotrlogigetCodeAction) userInfo:nil repeats:YES];
        [self->_PandaMovieTimer fire];
        
    });
    
}
-(void)FilmFacotrlogigetCodeAction{
    _PandaMovieNums--;
    _PandaSendCodeBtn.enabled = NO;
    [_PandaSendCodeBtn setTitle:[NSString stringWithFormat:@"%lds重发",(long)_PandaMovieNums] forState:UIControlStateNormal];
    if (_PandaMovieNums == 0) {
        [_PandaMovieTimer invalidate];
        [_PandaSendCodeBtn setTitle:[NSString stringWithFormat:@"重新获取"] forState:UIControlStateNormal];
        _PandaSendCodeBtn.enabled = YES;
    }
}
-(void)backBtnClick{
    [self dismissViewControllerAnimated:YES completion:nil];
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
