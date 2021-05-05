//
//  PandaHomeBtn.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/4.
//

#import "PandaHomeBtn.h"

@implementation PandaHomeBtn
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.PandaTopImgView];
        [self addSubview:self.PandaBtomlb];
    }
    return self;
}
- (UIImageView *)PandaTopImgView{
    if (!_PandaTopImgView) {
        _PandaTopImgView = [[UIImageView alloc]initWithFrame:CGRectZero];
        _PandaTopImgView.backgroundColor = [UIColor whiteColor];
    }
    return _PandaTopImgView;
}
- (UILabel *)PandaBtomlb{
    if (!_PandaBtomlb) {
        _PandaBtomlb = [[UILabel alloc]initWithFrame:CGRectZero];
        _PandaBtomlb.textAlignment = NSTextAlignmentCenter;
        _PandaBtomlb.textColor =[UIColor whiteColor];
        _PandaBtomlb.font  = [UIFont systemFontOfSize:13];
    }
    return _PandaBtomlb;
}
-(void)layoutSubviews{
    _PandaTopImgView.frame = CGRectMake(self.bounds.size.width/2-RealWidth(17.5), 0, RealWidth(35), RealWidth(35));
    _PandaBtomlb.frame = CGRectMake(0, CGRectGetMaxY(_PandaTopImgView.frame)+RealWidth(5), self.bounds.size.width, RealWidth(15));
}
@end
