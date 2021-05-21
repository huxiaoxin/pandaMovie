//
//  PandaMoviewDetailTableViewCell.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/20.
//

#import "PandaMoviewDetailTableViewCell.h"
#import "WWStarView.h"
@interface PandaMoviewDetailTableViewCell ()
@property(nonatomic,strong) UIImageView * pandaHotuserImgView;
@property(nonatomic,strong) UILabel     * PandaHotnamelb;
@property(nonatomic,strong) WWStarView  * pandaStarView;
@property(nonatomic,strong) UILabel     * PandaTimelb;
@property(nonatomic,strong) UILabel     * PandaContelb;
@end
@implementation PandaMoviewDetailTableViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle =  UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:self.pandaHotuserImgView];
        [self.contentView addSubview:self.PandaHotnamelb];
        [self.contentView addSubview:self.pandaStarView];
        [self.contentView addSubview:self.PandaTimelb];
        [self.contentView addSubview:self.PandaContelb];
    }
    return self;
}
- (UIImageView *)pandaHotuserImgView{
    if (!_pandaHotuserImgView) {
        _pandaHotuserImgView = [[UIImageView alloc]initWithFrame:CGRectMake(RealWidth(20), RealWidth(10), RealWidth(40), RealWidth(40))];
        _pandaHotuserImgView.layer.cornerRadius = RealWidth(5);
        _pandaHotuserImgView.layer.masksToBounds = YES;

    }
    return _pandaHotuserImgView;
}
- (UILabel *)PandaHotnamelb{
    if (!_PandaHotnamelb) {
        _PandaHotnamelb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_pandaHotuserImgView.frame)+RealWidth(7), CGRectGetMinY(_pandaHotuserImgView.frame), RealWidth(250), RealWidth(17))];
        _PandaHotnamelb.textColor = [UIColor blackColor];
        _PandaHotnamelb.font = [UIFont boldSystemFontOfSize:17];
        
    }
    return _PandaHotnamelb;
}
- (WWStarView *)pandaStarView{
    if (!_pandaStarView) {
        _pandaStarView = [[WWStarView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_pandaHotuserImgView.frame)+RealWidth(10), CGRectGetMaxY(_PandaHotnamelb.frame)+RealWidth(10), RealWidth(60), RealWidth(10)) numberOfStars:5 currentStar:1 rateStyle:WholeStar isAnination:YES andamptyImageName:@"xingxing-nomal" fullImageName:@"xingxing" finish:^(CGFloat currentStar) {
        
    }];
    _pandaStarView.userInteractionEnabled = NO;
    }
    return _pandaStarView;
}
- (UILabel *)PandaTimelb{
    if (!_PandaTimelb) {
        _PandaTimelb = [[UILabel alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH-RealWidth(150), CGRectGetMidY(_pandaHotuserImgView.frame)-RealWidth(7.5), RealWidth(135), RealWidth(15))];
        _PandaTimelb.textAlignment = NSTextAlignmentRight;
        _PandaTimelb.font = [UIFont systemFontOfSize:13];
        _PandaTimelb.textColor = [UIColor colorWithHexString:@"#E1E1E1"];
    }
    return _PandaTimelb;
}
- (UILabel *)PandaContelb{
    if (!_PandaContelb) {
        _PandaContelb = [[UILabel alloc]initWithFrame:CGRectMake(RealWidth(20), CGRectGetMaxY(_pandaHotuserImgView.frame)+RealWidth(15), GK_SCREEN_WIDTH-RealWidth(40), RealWidth(15))];
        _PandaContelb.textAlignment = NSTextAlignmentRight;
        _PandaContelb.font = [UIFont systemFontOfSize:15];
        _PandaContelb.textColor = [UIColor colorWithHexString:@"#2E302F"];
        _PandaContelb.numberOfLines = 0;
    }
    return _PandaContelb;
}
- (void)setPandaHotModel:(PandaMoviewHotComentModel *)pandaHotModel{
    _pandaHotModel =  pandaHotModel;
    [_pandaHotuserImgView sd_setImageWithURL:[NSURL URLWithString:pandaHotModel.imgurl]];
    _PandaHotnamelb.text = pandaHotModel.name;
    _PandaTimelb.text =  pandaHotModel.time;
    [_PandaContelb setText:pandaHotModel.content lineSpacing:RealWidth(4)];
    
    _PandaContelb.size = [_PandaContelb getSpaceLabelSize:pandaHotModel.content withFont:[UIFont systemFontOfSize:15] withWidth:GK_SCREEN_WIDTH-RealWidth(40) lineSpacing:RealWidth(4)];
    
    pandaHotModel.CellHeight = CGRectGetMaxY(_PandaContelb.frame)+RealWidth(10);
    [_pandaStarView setCurrentStar:pandaHotModel.StarNum];
}
@end
