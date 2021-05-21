//
//  PandaCommonCollectionViewCell.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/5.
//

#import "PandaCommonCollectionViewCell.h"
@interface PandaCommonCollectionViewCell ()
@property(nonatomic,strong) UIImageView * PandaThubImgView;
@property(nonatomic,strong) UILabel     * PandaBtomlb;
@end
@implementation PandaCommonCollectionViewCell
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        [self.contentView addSubview:self.PandaThubImgView];
        [self.contentView addSubview:self.PandaBtomlb];
    }
    return self;
}
- (UIImageView *)PandaThubImgView{
    if (!_PandaThubImgView) {
        _PandaThubImgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, RealWidth(80), RealWidth(120))];
        _PandaThubImgView.layer.cornerRadius = RealWidth(5);
        _PandaThubImgView.layer.masksToBounds = YES;
        _PandaThubImgView.contentMode = UIViewContentModeScaleAspectFill;
        [_PandaThubImgView sd_setImageWithURL:[NSURL URLWithString:@"https://pics7.baidu.com/feed/8694a4c27d1ed21b7e30a8d823d6ffc250da3f54.jpeg?token=1377e3615938cdb5f6b8d146c1a34ac8&s=22B15A83441305D01CD4300D0100E0C1"]];
    }
    return _PandaThubImgView;
}
-(UILabel *)PandaBtomlb{
    if (!_PandaBtomlb) {
        _PandaBtomlb = [[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(_PandaThubImgView.frame)+RealWidth(5), RealWidth(80), RealWidth(15))];
        _PandaBtomlb.textAlignment = NSTextAlignmentCenter;
        _PandaBtomlb.textColor = [UIColor whiteColor];
        _PandaBtomlb.font = [UIFont systemFontOfSize:15];
        _PandaBtomlb.text = @"速度与激情9";
    }
    return _PandaBtomlb;
}
- (void)setPadanModel:(PandaMovieModel *)padanModel{
    _padanModel = padanModel;
    [_PandaThubImgView  sd_setImageWithURL:[NSURL URLWithString:padanModel.pandaMoiveThuburl] placeholderImage:[UIImage imageNamed:@"zhanweitu"]];
    _PandaBtomlb.text =  padanModel.PandaMoviewName;
}
@end
