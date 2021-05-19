#import "PandaCatahroyBtn.h"

@implementation PandaCatahroyBtn
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.PandaCatagryTopImgView];
        [self addSubview:self.PandaBtomlb];
    }
    return self;
}
-(UIImageView *)PandaCatagryTopImgView{
    if (!_PandaCatagryTopImgView) {
        _PandaCatagryTopImgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, K(35), K(35))];
    }
    return _PandaCatagryTopImgView;
}
-(UILabel *)PandaBtomlb{
    if (!_PandaBtomlb) {
        _PandaBtomlb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaCatagryTopImgView.frame)+K(3.5), CGRectGetMidY(_PandaCatagryTopImgView.frame)-K(9.25), K(78), K(18.5))];
        _PandaBtomlb.textColor = [UIColor whiteColor];
        _PandaBtomlb.font = KSysFont(13);
    }
    return _PandaBtomlb;
}
@end
