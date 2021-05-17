//
//  PandaCenterHeaderView.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/17.
//

#import "PandaCenterHeaderView.h"
@interface  PandaCenterHeaderView ()
@property(nonatomic,strong) UIView      * PandaContentView;
@property(nonatomic,strong) UIImageView * PandauserImgView;
@property(nonatomic,strong) UILabel     * Pandausernamelb;
@property(nonatomic,strong) UILabel     * PandaCardlb;
@end
@implementation PandaCenterHeaderView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self  =[super initWithFrame:frame]) {
        UIView * PandaContentView = [[UIView alloc]initWithFrame:CGRectMake(RealWidth(15), RealWidth(10), GK_SCREEN_WIDTH-RealWidth(30), RealWidth(100))];
        PandaContentView.layer.cornerRadius = RealWidth(8);
        PandaContentView.layer.masksToBounds = YES;
        PandaContentView.backgroundColor = [UIColor colorWithHexString:@"2D2259"];
        [self addSubview:PandaContentView];
        _PandaContentView = PandaContentView;
        
        
        [PandaContentView addSubview:self.PandauserImgView];
        [PandaContentView addSubview:self.Pandausernamelb];
        [PandaContentView addSubview:self.PandaCardlb];

        
    }
    return self;
}
- (UIImageView *)PandauserImgView{
    if (!_PandauserImgView) {
        _PandauserImgView = [[UIImageView alloc]initWithFrame:CGRectMake(CGRectGetWidth(_PandaContentView.frame)-RealWidth(75), RealWidth(20), RealWidth(60), RealWidth(60))];
        _PandauserImgView.layer.cornerRadius = RealWidth(8);
        _PandauserImgView.layer.masksToBounds = YES;
        _PandauserImgView.backgroundColor = [UIColor redColor];
        _PandauserImgView.userInteractionEnabled = YES;
        
        UITapGestureRecognizer * PadauserImgTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(PandauserImgViewClick)];
        [_PandauserImgView addGestureRecognizer:PadauserImgTap];
    }
    return _PandauserImgView;
}
- (UILabel *)Pandausernamelb{
    if (!_Pandausernamelb) {
        _Pandausernamelb = [[UILabel alloc]initWithFrame:CGRectMake(RealWidth(15), RealWidth(28), RealWidth(200), RealWidth(20))];
        _Pandausernamelb.textColor = [UIColor whiteColor];
        _Pandausernamelb.font = [UIFont boldSystemFontOfSize:20];
        _Pandausernamelb.text  = @"归海一刀";
    }
    return _Pandausernamelb;
}
- (UILabel *)PandaCardlb{
    if (!_PandaCardlb) {
        _PandaCardlb = [[UILabel alloc]initWithFrame:CGRectMake(RealWidth(15), RealWidth(5)+CGRectGetMaxY(_Pandausernamelb.frame), RealWidth(200), RealWidth(13))];
        _PandaCardlb.textColor = [UIColor whiteColor];
        _PandaCardlb.font = [UIFont boldSystemFontOfSize:13];
        _PandaCardlb.text  = @"学号:20210949123";
    }
    return _PandaCardlb;
}
-(void)PandauserImgViewClick{
    [self.delegate PandaCenterHeaderViewWithChangeInfo];
}
@end
