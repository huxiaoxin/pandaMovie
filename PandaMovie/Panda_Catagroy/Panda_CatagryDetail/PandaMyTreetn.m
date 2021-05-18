#import "PandaMyTreetn.h"

@implementation PandaMyTreetn
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.PandaTopImgView];
        [self addSubview:self.PandaBtomlb];
    }
    return self;
}
-(UILabel *)PandaBtomlb{
    if (!_PandaBtomlb) {
        CGFloat ShuyunWidth = SCREEN_Width/5;
        _PandaBtomlb  = [[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(_PandaTopImgView.frame)+K(2), ShuyunWidth, K(16.5))];
        _PandaBtomlb.textAlignment = NSTextAlignmentCenter;
        _PandaBtomlb.textColor = [UIColor colorWithHexString:@"#333333"];
        _PandaBtomlb.font = KSysFont(12);
    
        
    }
    return _PandaBtomlb;
}
-(UIImageView *)PandaTopImgView{
    if (!_PandaTopImgView) {
        CGFloat ShuyunWidth = SCREEN_Width/5;
    _PandaTopImgView = [[UIImageView alloc]initWithFrame:CGRectMake(ShuyunWidth/2-K(17.5), 0, K(35), K(35))];
    }
    return _PandaTopImgView;
}
@end
