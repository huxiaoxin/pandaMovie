//
//  PandaGoodFilmTableViewCell.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/6.
//

#import "PandaGoodFilmTableViewCell.h"
@interface PandaGoodFilmTableViewCell ()
@property(nonatomic,strong) UIImageView * PandaThubImgView;
@property(nonatomic,strong) UILabel     * PandaToplb;
@property(nonatomic,strong) UILabel     * PandaEngilshNamelb;

@property(nonatomic,strong) UILabel     * PandaTimeComminglb;
@end
@implementation PandaGoodFilmTableViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.backgroundColor = [UIColor clearColor];
        [self.contentView addSubview:self.PandaThubImgView];
        [self.contentView addSubview:self.PandaToplb];
        [self.contentView addSubview:self.PandaEngilshNamelb];

    }
    return self;
}
- (UIImageView *)PandaThubImgView{
    if (!_PandaThubImgView) {
        _PandaThubImgView =[[UIImageView alloc]initWithFrame:CGRectMake(RealWidth(10), RealWidth(10), RealWidth(80), RealWidth(100))];
        _PandaThubImgView.contentMode =  UIViewContentModeScaleAspectFill;
        _PandaThubImgView.layer.masksToBounds = YES;
        _PandaThubImgView.layer.cornerRadius = RealWidth(5);
        [_PandaThubImgView sd_setImageWithURL:[NSURL URLWithString:@"https://pics7.baidu.com/feed/8694a4c27d1ed21b7e30a8d823d6ffc250da3f54.jpeg?token=1377e3615938cdb5f6b8d146c1a34ac8&s=22B15A83441305D01CD4300D0100E0C1"]];
    }
    return _PandaThubImgView;
}
- (UILabel *)PandaToplb{
    if (!_PandaToplb) {
        _PandaToplb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaThubImgView.frame)+RealWidth(5), CGRectGetMinY(_PandaThubImgView.frame)+RealWidth(5), GK_SCREEN_WIDTH-CGRectGetMaxX(_PandaThubImgView.frame)-RealWidth(10), RealWidth(17))];
        _PandaToplb.text = @"速度与激情9--特别行动";
        _PandaToplb.font = [UIFont systemFontOfSize:16];
        _PandaToplb.textColor = [UIColor whiteColor];
    }
    return _PandaToplb;
}
- (UILabel *)PandaEngilshNamelb{
    if (!_PandaEngilshNamelb) {
        _PandaEngilshNamelb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaThubImgView.frame)+RealWidth(5), CGRectGetMaxY(_PandaToplb.frame)+RealWidth(5), GK_SCREEN_WIDTH-CGRectGetMaxX(_PandaThubImgView.frame)-RealWidth(10), RealWidth(15))];
        _PandaEngilshNamelb.text = @"Fast and Furious 9";
        _PandaEngilshNamelb.font = [UIFont systemFontOfSize:13];
        _PandaEngilshNamelb.textColor = [UIColor colorWithHexString:@"9F9FA5"];
    }
    return _PandaEngilshNamelb;
}
@end
