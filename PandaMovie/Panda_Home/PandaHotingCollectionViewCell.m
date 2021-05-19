//
//  PandaHotingCollectionViewCell.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/5.
//

#import "PandaHotingCollectionViewCell.h"
#import "WWStarView.h"
@interface PandaHotingCollectionViewCell ()
@property(nonatomic,strong) UIImageView * PandaThubImgView;
@property(nonatomic,strong) UILabel     * PandaToptitle;
@property(nonatomic,strong) UILabel     * PandaCenterTypelb;
@property(nonatomic,strong) UILabel     * PandaTimelb;
@property(nonatomic,strong) WWStarView  * PandaStarView;
@property(nonatomic,strong) UIButton    * PandaColltecdBtn;
@end
@implementation PandaHotingCollectionViewCell
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor =[UIColor colorWithHexString:@"#2D2259"];
        [self.contentView addSubview:self.PandaThubImgView];
        [self.contentView addSubview:self.PandaToptitle];
        [self.contentView addSubview:self.PandaCenterTypelb];
        [self.contentView addSubview:self.PandaTimelb];
        [self.contentView addSubview:self.PandaStarView];
        [self.contentView addSubview:self.PandaColltecdBtn];

    }
    return self;
}
- (UILabel *)PandaToptitle{
    if (!_PandaToptitle) {
        _PandaToptitle = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaThubImgView.frame)+RealWidth(5), CGRectGetMinY(_PandaThubImgView.frame)+RealWidth(5), RealWidth(200)-CGRectGetMaxX(_PandaThubImgView.frame)-RealWidth(5), RealWidth(15))];
        _PandaToptitle.textColor = [UIColor whiteColor];
        _PandaToptitle.font = [UIFont boldSystemFontOfSize:13];
        _PandaToptitle.text =@"速度与激情9--特别行动";
    }
    return _PandaToptitle;
}
- (UILabel *)PandaCenterTypelb{
    if (!_PandaCenterTypelb) {
        _PandaCenterTypelb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaThubImgView.frame)+RealWidth(5), CGRectGetMaxY(_PandaToptitle.frame)+RealWidth(5), RealWidth(200)-CGRectGetMaxX(_PandaThubImgView.frame)-RealWidth(5), RealWidth(13))];
        _PandaCenterTypelb.textColor =  LGDGaryColor;
        _PandaCenterTypelb.font = [UIFont systemFontOfSize:12];
        _PandaCenterTypelb.text = @"剧情 动作 惊悚";
    }
    return _PandaCenterTypelb;
}
- (UILabel *)PandaTimelb{
    if (!_PandaTimelb) {
        _PandaTimelb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaThubImgView.frame)+RealWidth(5), CGRectGetMaxY(_PandaCenterTypelb.frame)+RealWidth(5), RealWidth(200)-CGRectGetMaxX(_PandaThubImgView.frame)-RealWidth(5), RealWidth(13))];
        _PandaTimelb.textColor =  LGDGaryColor;
        _PandaTimelb.font = [UIFont systemFontOfSize:12];
        _PandaTimelb.text = @"上映时间：2021-05-15 12:00:00";
    }
    return _PandaTimelb;
}
- (WWStarView *)PandaStarView{
    if (!_PandaStarView) {
        _PandaStarView = [[WWStarView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaThubImgView.frame)+RealWidth(5), CGRectGetMaxY(_PandaTimelb.frame)+RealWidth(10), RealWidth(200)-CGRectGetMaxX(_PandaThubImgView.frame)-RealWidth(15), RealWidth(13)) numberOfStars:5 currentStar:4 rateStyle:WholeStar isAnination:YES andamptyImageName:@"xingxing-nomal" fullImageName:@"xingxing" finish:^(CGFloat currentStar) {
            
        }];
        _PandaStarView.userInteractionEnabled = NO;
    }
    return _PandaStarView;
}
- (UIButton *)PandaColltecdBtn{
    if (!_PandaColltecdBtn) {
        _PandaColltecdBtn = [[UIButton alloc]initWithFrame:CGRectMake(RealWidth(200)-RealWidth(50), CGRectGetMaxY(_PandaStarView.frame)+RealWidth(7), RealWidth(40), RealWidth(15))];
        [_PandaColltecdBtn setTitle:@"收藏" forState:UIControlStateNormal];
        [_PandaColltecdBtn setTitleColor:LGDMianColor forState:UIControlStateNormal];
        _PandaColltecdBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        _PandaColltecdBtn.titleLabel.font = [UIFont systemFontOfSize:10];
        _PandaColltecdBtn.layer.borderColor = LGDMianColor.CGColor;
        _PandaColltecdBtn.layer.borderWidth = RealWidth(1);
    }
    return _PandaColltecdBtn;
}
- (UIImageView *)PandaThubImgView{
    if (!_PandaThubImgView) {
        _PandaThubImgView = [[UIImageView alloc]initWithFrame:CGRectMake(RealWidth(10), RealWidth(5), RealWidth(80), RealWidth(100))];
        [_PandaThubImgView sd_setImageWithURL:[NSURL URLWithString:@"https://pics7.baidu.com/feed/8694a4c27d1ed21b7e30a8d823d6ffc250da3f54.jpeg?token=1377e3615938cdb5f6b8d146c1a34ac8&s=22B15A83441305D01CD4300D0100E0C1"]];
        _PandaThubImgView.layer.cornerRadius = RealWidth(5);
        _PandaThubImgView.layer.masksToBounds = YES;
        _PandaThubImgView.contentMode = UIViewContentModeScaleAspectFill;
    }
    return _PandaThubImgView;
}
- (void)setPandaModel:(PandaMovieModel *)pandaModel{
    _pandaModel = pandaModel;
    _PandaToptitle.text =  pandaModel.famous;
    _PandaCenterTypelb.text = pandaModel.filmtype;
    _PandaTimelb.text = pandaModel.articlList;
    
    [_PandaThubImgView sd_setImageWithURL:[NSURL URLWithString:pandaModel.imgTubUrl] placeholderImage:[UIImage imageNamed:@"zhanweitu"]];
    [_PandaStarView setCurrentStar:pandaModel.total_Num];
}
@end
