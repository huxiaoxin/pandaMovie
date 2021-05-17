//
//  PandaMsgTableViewCell.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/17.
//

#import "PandaMsgTableViewCell.h"
@interface PandaMsgTableViewCell ()
@property(nonatomic,strong) UIImageView * PandauserImgView;
@property(nonatomic,strong) UILabel     * Pandausernamelb;
@property(nonatomic,strong) UILabel     * PandaContentlb;
@property(nonatomic,strong) UILabel     * PandaRedNumlb;
@property(nonatomic,strong) UILabel     * PandaRedTimelb;

@end
@implementation PandaMsgTableViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.backgroundColor = [UIColor clearColor];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self.contentView addSubview:self.PandauserImgView];
        [self.contentView addSubview:self.Pandausernamelb];
        [self.contentView addSubview:self.PandaContentlb];
        [self.contentView addSubview:self.PandaRedNumlb];
        [self.contentView addSubview:self.PandaRedTimelb];

        
    }
    return self;
}
- (UIImageView *)PandauserImgView{
    if (!_PandauserImgView) {
        _PandauserImgView = [[UIImageView alloc]initWithFrame:CGRectMake(RealWidth(10), RealWidth(10), RealWidth(38), RealWidth(38))];
        _PandauserImgView.layer.cornerRadius = RealWidth(8);
        _PandauserImgView.layer.masksToBounds = YES;
        _PandauserImgView.backgroundColor = [UIColor blueColor];
    }
    return _PandauserImgView;
}
- (UILabel *)Pandausernamelb{
    if (!_Pandausernamelb) {
        _Pandausernamelb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandauserImgView.frame)+RealWidth(10), CGRectGetMinY(_PandauserImgView.frame)+RealWidth(4), RealWidth(350), RealWidth(15))];
        _Pandausernamelb.textColor = [UIColor whiteColor];
        _Pandausernamelb.font = [UIFont systemFontOfSize:15];
        _Pandausernamelb.text = @"草莓味的小溪";
    }
    return _Pandausernamelb;
}
- (UILabel *)PandaContentlb{
    if (!_PandaContentlb) {
        _PandaContentlb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandauserImgView.frame)+RealWidth(10), CGRectGetMaxY(_Pandausernamelb.frame)+RealWidth(4), RealWidth(350), RealWidth(15))];
        _PandaContentlb.textColor = [UIColor whiteColor];
        _PandaContentlb.font = [UIFont systemFontOfSize:13];
        _PandaContentlb.text = @"大佬，什么时候可以约拍呀～～";
    }
    return _PandaContentlb;
}
- (UILabel *)PandaRedNumlb{
    if (!_PandaRedNumlb) {
        _PandaRedNumlb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandauserImgView.frame)-RealWidth(8), CGRectGetMinY(_PandauserImgView.frame)-RealWidth(4), RealWidth(16), RealWidth(16))];
        _PandaRedNumlb.layer.cornerRadius = RealWidth(8);
        _PandaRedNumlb.layer.masksToBounds = YES;
        _PandaRedNumlb.textAlignment = NSTextAlignmentCenter;
        _PandaRedNumlb.font = [UIFont systemFontOfSize:13];
        _PandaRedNumlb.textColor = [UIColor whiteColor];
        _PandaRedNumlb.text = @"12";
        _PandaRedNumlb.backgroundColor = [UIColor redColor];
    }
    return _PandaRedNumlb;
}
- (UILabel *)PandaRedTimelb{
    if (!_PandaRedTimelb) {
        _PandaRedTimelb = [[UILabel alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH-RealWidth(150), RealWidth(20), RealWidth(135), RealWidth(18))];
        _PandaRedTimelb.textColor = [UIColor whiteColor];
        _PandaRedTimelb.font = [UIFont systemFontOfSize:13];
        _PandaRedTimelb.text = @"星期三";
        _PandaRedTimelb.textAlignment = NSTextAlignmentRight;
    }
    return _PandaRedTimelb;
}
@end
