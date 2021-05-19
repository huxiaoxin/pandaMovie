

#import "PandaCatagrortyDetailJoinController.h"
#import "UITextField+AddPlaceholder.h"
@interface PandaCatagrortyDetailJoinController ()
@property(nonatomic,strong) UIButton    * pandaJonitBtn;
@property(nonatomic,strong) UITextField * pandaJonitTextField;
@property(nonatomic,strong) UITextField * pandaJonitTextField1;
@property(nonatomic,strong) UITextField * pandaJonitTextField2;
@property(nonatomic,strong) UITextField * pandaJonitTextField3;
@end

@implementation PandaCatagrortyDetailJoinController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"报名详情";
    
    UIView * pandaJonitFirstView = [[UIView alloc]initWithFrame:CGRectMake(0, NaviH+K(10), SCREEN_Width, K(80))];
    pandaJonitFirstView.backgroundColor = [UIColor colorWithHexString:@"292945"];
    [self.view addSubview:pandaJonitFirstView];
    
    UIImageView * pandaJonitThubImgView =[[UIImageView alloc]initWithFrame:CGRectMake(K(15), K(10), K(60), K(60))];
    pandaJonitThubImgView.layer.cornerRadius = K(5);
    pandaJonitThubImgView.layer.masksToBounds = YES;
    [pandaJonitFirstView addSubview:pandaJonitThubImgView];
    [pandaJonitThubImgView sd_setImageWithURL:[NSURL URLWithString:self.pandaModel.FilmThubImgView]];
    UILabel * pandaJonitToplb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(pandaJonitThubImgView.frame)+K(10), K(10), SCREEN_Width-CGRectGetMaxX(pandaJonitThubImgView.frame)-K(20), K(60))];
    pandaJonitToplb.numberOfLines =  0;
    pandaJonitToplb.textColor = [UIColor whiteColor];
    pandaJonitToplb.font = [UIFont systemFontOfSize:13];
    pandaJonitToplb.text = self.pandaModel.title;
    [pandaJonitFirstView addSubview:pandaJonitToplb];
    
    
    
    UIView * pandaDeepView = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(pandaJonitFirstView.frame)+K(10), SCREEN_Width, K(160))];
    pandaDeepView.backgroundColor=  [UIColor colorWithHexString:@"292945"];
    [self.view addSubview:pandaDeepView];
    
    
    UILabel * pandaRealNamelb=  [self pandaLbconfigerWithTtile:@"真实姓名:" lbFrame:CGRectMake(K(10), 0, K(100), K(40))];
    [pandaDeepView addSubview:pandaRealNamelb];
    
    UITextField * pandaJonitTextField = [self pandaLbConfigtextFieldWithHoder:@"请输入真实姓名" FieldFrame:CGRectMake(CGRectGetMaxX(pandaRealNamelb.frame), 0, SCREEN_Width-CGRectGetMaxX(pandaRealNamelb.frame), K(40))];
    [pandaDeepView addSubview:pandaJonitTextField];
    _pandaJonitTextField = pandaJonitTextField;
    
    UILabel * pandaCompanylb=  [self pandaLbconfigerWithTtile:@"公司名称:" lbFrame:CGRectMake(K(10), CGRectGetMaxY(pandaRealNamelb.frame), K(100), K(40))];
    [pandaDeepView addSubview:pandaCompanylb];
    
    UITextField * pandaJonitTextField1 = [self pandaLbConfigtextFieldWithHoder:@"请输入公司名称" FieldFrame:CGRectMake(CGRectGetMaxX(pandaRealNamelb.frame), CGRectGetMaxY(pandaRealNamelb.frame), SCREEN_Width-CGRectGetMaxX(pandaCompanylb.frame), K(40))];
    [pandaDeepView addSubview:pandaJonitTextField1];
    _pandaJonitTextField1 = pandaJonitTextField1;
    
    
    UILabel * pandaphonelb=  [self pandaLbconfigerWithTtile:@"联系电话:" lbFrame:CGRectMake(K(10), CGRectGetMaxY(pandaCompanylb.frame), K(100), K(40))];
    [pandaDeepView addSubview:pandaphonelb];
    
    UITextField * pandaJonitTextField2 = [self pandaLbConfigtextFieldWithHoder:@"请输入手机号" FieldFrame:CGRectMake(CGRectGetMaxX(pandaCompanylb.frame), CGRectGetMaxY(pandaCompanylb.frame), SCREEN_Width-CGRectGetMaxX(pandaphonelb.frame), K(40))];
    [pandaDeepView addSubview:pandaJonitTextField2];
    _pandaJonitTextField2 = pandaJonitTextField2;
    
    
    UILabel * pandapholderlb=  [self pandaLbconfigerWithTtile:@"备注:" lbFrame:CGRectMake(K(10), CGRectGetMaxY(pandaphonelb.frame), K(100), K(40))];
    [pandaDeepView addSubview:pandapholderlb];
    
    UITextField * pandaJonitTextField3 = [self pandaLbConfigtextFieldWithHoder:@"如有特殊需求可填写在这儿" FieldFrame:CGRectMake(CGRectGetMaxX(pandaphonelb.frame), CGRectGetMaxY(pandaphonelb.frame), SCREEN_Width-CGRectGetMaxX(pandapholderlb.frame), K(40))];
    [pandaDeepView addSubview:pandaJonitTextField3];
    _pandaJonitTextField3=  pandaJonitTextField3;
    

    
    [self.view addSubview:self.pandaJonitBtn];
    // Do any additional setup after loading the view.
}
-(void)pandaJonitBtnClick{
    if (_pandaJonitTextField.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"请填写真实姓名"];
        return;
    }
    if (_pandaJonitTextField1.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"请填写公司名称"];
        return;
    }
    if (_pandaJonitTextField2.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"请输入手机号"];
        return;
    }
    
    if (_pandaJonitTextField2.text.length != 11) {
        [LCProgressHUD showInfoMsg:@"请输入正确的手机号"];
        return;
    }
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD showSuccess:@"提交成功,请注意手机短信"];
        [self.navigationController popViewControllerAnimated:YES];
    });
    
}
- (UIButton *)pandaJonitBtn{
    if (!_pandaJonitBtn) {
        _pandaJonitBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, SCREEN_Height-K(50), SCREEN_Width-K(0), K(50))];
        [_pandaJonitBtn setBackgroundColor: LGDMianColor];
        [_pandaJonitBtn setTitle:@"立即参与" forState:UIControlStateNormal];
        [_pandaJonitBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _pandaJonitBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        _pandaJonitBtn.titleLabel.font = [UIFont systemFontOfSize:K(15)];
        [_pandaJonitBtn addTarget:self action:@selector(pandaJonitBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _pandaJonitBtn;
}

-(UILabel *)pandaLbconfigerWithTtile:(NSString *)titleStr lbFrame:(CGRect)lbFrame{
    NSString * configStr = [NSString stringWithFormat:@"  %@",titleStr];
    UILabel * lb = [[UILabel alloc]initWithFrame:lbFrame];
    lb.textColor = [UIColor whiteColor];
    NSTextAttachment  * attment = [[NSTextAttachment alloc]init];
    attment.image = [UIImage imageNamed:@"hongdian"];
    attment.bounds = CGRectMake(0, 0, K(10), K(10));
    NSAttributedString * attbu = [NSAttributedString attributedStringWithAttachment:attment];
    NSMutableAttributedString * lbAttb  =[[NSMutableAttributedString alloc]initWithString:configStr];
    [lbAttb addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:14] range:NSMakeRange(0, configStr.length)];
    [lbAttb insertAttributedString:attbu atIndex:0];
    lb.attributedText = lbAttb;
    return lb;
}
-(UITextField *)pandaLbConfigtextFieldWithHoder:(NSString *)holdStr FieldFrame:(CGRect)FieldFRame{
    
    UITextField * Filed = [[UITextField alloc]initWithFrame:FieldFRame];
    [Filed addPlaceholders:[UIFont systemFontOfSize:12] holderStr:holdStr holderColor:LGDGaryColor];
    Filed.textColor = LGDBLackColor;
    Filed.font = [UIFont systemFontOfSize:14];
    Filed.clearButtonMode = UITextFieldViewModeAlways;
    return Filed;
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
