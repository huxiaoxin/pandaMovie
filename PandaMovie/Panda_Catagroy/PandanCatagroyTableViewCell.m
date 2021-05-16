//
//  PandanCatagroyTableViewCell.m
//  PandaMovie
//
//  Created by codehzx on 2021/5/15.
//

#import "PandanCatagroyTableViewCell.h"
#import "WWStarView.h"
@interface PandanCatagroyTableViewCell ()
@property(nonatomic,strong) UIView      * PandaContentView;
@property(nonatomic,strong) UIImageView * PandaThubImgView;
@property(nonatomic,strong) UILabel     * PandaNamelb;
@property(nonatomic,strong) UILabel     * PandaInfolb;
@property(nonatomic,strong) UILabel     * PandaArticlb;
@property(nonatomic,strong) WWStarView  * PandaStar;
@property(nonatomic,strong) UILabel     * PandaNumlb;
@property(nonatomic,strong) UIButton    * PandaCollteceBtn;
@end
@implementation PandanCatagroyTableViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.backgroundColor = [UIColor clearColor];
        [self.contentView addSubview:self.PandaContentView];
        [self.contentView addSubview:self.PandaThubImgView];
        
        [_PandaContentView addSubview:self.PandaNamelb];
        [_PandaContentView addSubview:self.PandaInfolb];
        [_PandaContentView addSubview:self.PandaArticlb];
        [_PandaContentView addSubview:self.PandaStar];
        [_PandaContentView addSubview:self.PandaNumlb];
        [_PandaContentView addSubview:self.PandaCollteceBtn];

        
        
        
    }
    return self;
}
- (UIView *)PandaContentView{
    if (!_PandaContentView) {
        _PandaContentView = [[UIView alloc]initWithFrame:CGRectMake(RealWidth(15), RealWidth(40), SCREEN_Width-RealWidth(30), RealWidth(110))];
        _PandaContentView.backgroundColor = [UIColor colorWithHexString:@"292945"];
        _PandaContentView.layer.cornerRadius = RealWidth(5);
        _PandaContentView.layer.masksToBounds = YES;
    }
    return _PandaContentView;
}
- (UIImageView *)PandaThubImgView{
    if (!_PandaThubImgView) {
        _PandaThubImgView = [[UIImageView alloc]initWithFrame:CGRectMake(RealWidth(10), RealWidth(10), RealWidth(100), RealWidth(130))];
        _PandaThubImgView.layer.cornerRadius = RealWidth(5);
        _PandaThubImgView.layer.masksToBounds = YES;
        _PandaThubImgView.backgroundColor = LGDLightGaryColor;
    }
    return _PandaThubImgView;
}
- (UILabel *)PandaNamelb{
    if (!_PandaNamelb) {
        _PandaNamelb = [[UILabel alloc]initWithFrame:CGRectMake(RealWidth(110), RealWidth(10), CGRectGetWidth(_PandaContentView.frame)-RealWidth(110), RealWidth(15))];
        _PandaNamelb.textColor = [UIColor whiteColor];
        _PandaNamelb.font = [UIFont systemFontOfSize:15];
        _PandaNamelb.text = @"阿拉丁";
    }
    return _PandaNamelb;
}
- (UILabel *)PandaInfolb{
    if (!_PandaInfolb) {
        _PandaInfolb = [[UILabel alloc]initWithFrame:CGRectMake(RealWidth(110), RealWidth(10)+CGRectGetMaxY(_PandaNamelb.frame), CGRectGetWidth(_PandaContentView.frame)-RealWidth(110), RealWidth(13))];
        _PandaInfolb.textColor = [UIColor colorWithHexString:@"#818088"];
        _PandaInfolb.font = [UIFont systemFontOfSize:12];
        _PandaInfolb.text = @"爱情/歌舞/奇幻/冒险";
    }
    return _PandaInfolb;
}
- (UILabel *)PandaArticlb{
    if (!_PandaArticlb) {
        _PandaArticlb = [[UILabel alloc]initWithFrame:CGRectMake(RealWidth(110), RealWidth(10)+CGRectGetMaxY(_PandaInfolb.frame), CGRectGetWidth(_PandaContentView.frame)-RealWidth(110), RealWidth(13))];
        _PandaArticlb.textColor = [UIColor colorWithHexString:@"#818088"];
        _PandaArticlb.font = [UIFont systemFontOfSize:12];
        _PandaArticlb.text = @"梅纳.玛索德 /奥米.斯科特";
    }
    return _PandaArticlb;
}
- (WWStarView *)PandaStar{
    if (!_PandaStar) {
        _PandaStar = [[WWStarView alloc]initWithFrame:CGRectMake(RealWidth(110), CGRectGetMaxY(_PandaArticlb.frame)+RealWidth(10), RealWidth(100), RealWidth(15)) numberOfStars:5 currentStar:4 rateStyle:WholeStar isAnination:YES andamptyImageName:@"xingxing-nomal" fullImageName:@"xingxing" finish:^(CGFloat currentStar) {
            
        }];
    }
    return _PandaStar;
}
- (UILabel *)PandaNumlb{
    if (!_PandaNumlb) {
        _PandaNumlb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaStar.frame)+RealWidth(4), RealWidth(11)+CGRectGetMaxY(_PandaArticlb.frame), CGRectGetWidth(_PandaContentView.frame)-RealWidth(110), RealWidth(13))];
        _PandaNumlb.textColor = [UIColor whiteColor];
        _PandaNumlb.font = [UIFont systemFontOfSize:12];
        _PandaNumlb.text = @"7.8";
    }
    return _PandaNumlb;
}
- (UIButton *)PandaCollteceBtn{
    if (!_PandaCollteceBtn) {
        _PandaCollteceBtn = [[UIButton alloc]initWithFrame:CGRectMake(CGRectGetWidth(_PandaContentView.frame)-RealWidth(60), CGRectGetMidY(_PandaStar.frame)-RealWidth(10), RealWidth(50), RealWidth(20))];
        [_PandaCollteceBtn setBackgroundColor:LGDMianColor];
        _PandaCollteceBtn.layer.cornerRadius = RealWidth(5);
        _PandaCollteceBtn.layer.masksToBounds = YES;
        [_PandaCollteceBtn setTitle:@"收藏" forState:UIControlStateNormal];
        _PandaCollteceBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        _PandaCollteceBtn.titleLabel.font = [UIFont systemFontOfSize:12];
    }
    return _PandaCollteceBtn;
}
@end
