//
//  PandaMovielb.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/20.
//

#import "PandaMovielb.h"
@interface PandaMovielb ()

@end
@implementation PandaMovielb
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.pandaToplb];
        [self addSubview:self.pandaBtomView];
    }
    return self;
}
- (UILabel *)pandaToplb{
    if (!_pandaToplb) {
        _pandaToplb = [[UILabel alloc]init];
        _pandaToplb.font = [UIFont boldSystemFontOfSize:20];
        _pandaToplb.textColor = [UIColor colorWithHexString:@"#F88706"];
        
    }
    return _pandaToplb;
}
- (UIView *)pandaBtomView{
    if (!_pandaBtomView) {
        _pandaBtomView = [[UIView alloc]init];
        _pandaBtomView.backgroundColor = [UIColor colorWithHexString:@"#F88706"];
        _pandaBtomView.layer.cornerRadius = RealWidth(1.5);
        _pandaBtomView.layer.masksToBounds = YES;
    }
    return _pandaBtomView;
}
-(void)layoutSubviews{
    _pandaToplb.frame = CGRectMake(0, 0, self.bounds.size.width, RealWidth(20));
    _pandaBtomView.frame = CGRectMake(0, RealWidth(24), self.bounds.size.width, RealWidth(3));
}
@end
