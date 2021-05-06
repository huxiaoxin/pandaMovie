//
//  PandaHomeNavView.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/4.
//

#import "PandaHomeNavView.h"
@interface PandaHomeNavView ()
@property(nonatomic,strong) UIImageView * pandaImgView;
@property(nonatomic,strong) UIView      * pandaSearchView;
@property(nonatomic,strong) UIButton    * pandaRightbtn;
@end
@implementation PandaHomeNavView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self  = [super initWithFrame:frame]) {
        [self addSubview:self.pandaImgView];
        [self addSubview:self.pandaSearchView];
        [self addSubview:self.pandaRightbtn];
    }
    return self;
}
- (UIImageView *)pandaImgView{
    if (!_pandaImgView) {
        _pandaImgView = [[UIImageView alloc]initWithFrame:CGRectMake(RealWidth(10), GK_STATUSBAR_HEIGHT+RealWidth(5), RealWidth(30), RealWidth(30))];
        _pandaImgView.backgroundColor = [UIColor whiteColor];
    }
    return _pandaImgView;
}
- (UIView *)pandaSearchView{
    if (!_pandaSearchView) {
        _pandaSearchView = [[UIView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_pandaImgView.frame)+RealWidth(5), GK_STATUSBAR_HEIGHT, GK_SCREEN_WIDTH-CGRectGetMaxX(_pandaImgView.frame)-RealWidth(10)-RealWidth(50), GK_NAVBAR_HEIGHT)];
        _pandaSearchView.backgroundColor = [UIColor clearColor];
        UIView *TextFieldsearchiView = [[UIView alloc]initWithFrame:CGRectMake(RealWidth(5), RealWidth(5), CGRectGetWidth(_pandaSearchView.frame)-RealWidth(10), CGRectGetHeight(_pandaSearchView.frame)-RealWidth(10))];
        TextFieldsearchiView.backgroundColor = [UIColor colorWithHexString:@"2D2259"];
        TextFieldsearchiView.layer.cornerRadius = CGRectGetHeight(TextFieldsearchiView.frame)/2;
        TextFieldsearchiView.layer.masksToBounds = YES;
        [_pandaSearchView addSubview:TextFieldsearchiView];
        
        UILabel * Textholderlb = [[UILabel alloc]initWithFrame:CGRectMake(RealWidth(10), 0, CGRectGetWidth(TextFieldsearchiView.frame)-RealWidth(10), CGRectGetHeight(TextFieldsearchiView.frame))];
        Textholderlb.textColor = [UIColor colorWithHexString:@"9F9FA5"];
        Textholderlb.font = [UIFont systemFontOfSize:12];
        Textholderlb.text = @"搜你所搜，看你所看";
        [TextFieldsearchiView addSubview:Textholderlb];
        
        
    }
    return _pandaSearchView;
}
- (UIButton *)pandaRightbtn{
    if (!_pandaRightbtn) {
        _pandaRightbtn = [[UIButton alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_pandaSearchView.frame)+RealWidth(5), GK_STATUSBAR_HEIGHT+RealWidth(5), RealWidth(30), RealWidth(30))];
        [_pandaRightbtn setBackgroundImage:[UIImage imageNamed:@"scan"] forState:UIControlStateNormal];
        [_pandaRightbtn addTarget:self action:@selector(pandaRightbtnClick) forControlEvents:UIControlEventTouchUpInside];
        _pandaRightbtn.adjustsImageWhenHighlighted = NO;
    }
    return _pandaRightbtn;
}
-(void)pandaRightbtnClick{
    [self.delegate PandaHomeNavViewWithScanAction];
}
@end
