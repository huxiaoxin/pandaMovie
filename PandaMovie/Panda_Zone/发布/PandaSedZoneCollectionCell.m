#import "PandaSedZoneCollectionCell.h"

@implementation PandaSedZoneCollectionCell
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        UIImageView * PandaImgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, K(100), K(100))];
        PandaImgView.layer.cornerRadius = K(5);
        PandaImgView.layer.masksToBounds = YES;
        [self.contentView addSubview:PandaImgView];
        _PandaImgView = PandaImgView;
    }
    return self;
}
@end
