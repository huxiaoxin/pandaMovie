//
//  PandaBangdanTableViewCell.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/5.
//

#import "PandaBangdanTableViewCell.h"
@interface PandaBangdanTableViewCell ()

@property(nonatomic,strong) UILabel     * PandaNamelb;
@property(nonatomic,strong) UILabel     * PandaDetailb;
@property(nonatomic,strong) UILabel     * PandaZonhelb;
@property(nonatomic,strong) UILabel     * PandaRatelb;
@property(nonatomic,strong) UILabel     * PandaRoomNumlb;

@end
@implementation PandaBangdanTableViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self.contentView addSubview:self.PandaTopimgView];
        [self.contentView addSubview:self.PandaNumlb];
        [self.contentView addSubview:self.PandaNamelb];
        [self.contentView addSubview:self.PandaDetailb];
        [self.contentView addSubview:self.PandaZonhelb];
        [self.contentView addSubview:self.PandaRatelb];
        [self.contentView addSubview:self.PandaRoomNumlb];

    }
    return self;
}
- (UIImageView *)PandaTopimgView{
    if (!_PandaTopimgView) {
        _PandaTopimgView = [[UIImageView alloc]init];
    }
    return _PandaTopimgView;
}
- (UILabel *)PandaNumlb{
    if (!_PandaNumlb) {
        _PandaNumlb = [[UILabel alloc]init];
        _PandaNumlb.textColor = [UIColor whiteColor];
        _PandaNumlb.font = [UIFont boldSystemFontOfSize:15];
        _PandaNumlb.textAlignment = NSTextAlignmentCenter;
    }
    return _PandaNumlb;
}
- (UILabel *)PandaNamelb{
    if (!_PandaNamelb) {
        _PandaNamelb = [[UILabel alloc]init];
        _PandaNamelb.textColor = [UIColor whiteColor];
        _PandaNamelb.font = [UIFont boldSystemFontOfSize:15];
        _PandaNamelb.textAlignment = NSTextAlignmentCenter;
        _PandaNamelb.text = @"悬崖之上";
    }
    return _PandaNamelb;
}
- (UILabel *)PandaDetailb{
    if (!_PandaDetailb) {
        _PandaDetailb = [[UILabel alloc]init];
        _PandaDetailb.textColor = [UIColor colorWithHexString:@"9F9FA5"];
        _PandaDetailb.font = [UIFont boldSystemFontOfSize:10];
        _PandaDetailb.textAlignment = NSTextAlignmentCenter;
        _PandaDetailb.text = @"上映7天 5.71亿";
    }
    return _PandaDetailb;
}
- (UILabel *)PandaZonhelb{
    if (!_PandaZonhelb) {
        _PandaZonhelb = [[UILabel alloc]init];
        _PandaZonhelb.textColor = [UIColor colorWithHexString:@"FD8007"];
        _PandaZonhelb.font = [UIFont boldSystemFontOfSize:15];
        _PandaZonhelb.textAlignment = NSTextAlignmentCenter;
        _PandaZonhelb.text = @"161.40万";
    }
    return _PandaZonhelb;
}
- (UILabel *)PandaRatelb{
    if (!_PandaRatelb) {
        _PandaRatelb = [[UILabel alloc]init];
        _PandaRatelb.textColor = [UIColor whiteColor];
        _PandaRatelb.font = [UIFont boldSystemFontOfSize:15];
        _PandaRatelb.textAlignment = NSTextAlignmentCenter;
        _PandaRatelb.text = @"35.34%";
    }
    return _PandaRatelb;
}
- (UILabel *)PandaRoomNumlb{
    if (!_PandaRoomNumlb) {
        _PandaRoomNumlb = [[UILabel alloc]init];
        _PandaRoomNumlb.textColor = [UIColor whiteColor];
        _PandaRoomNumlb.font = [UIFont boldSystemFontOfSize:15];
        _PandaRoomNumlb.textAlignment = NSTextAlignmentCenter;
        _PandaRoomNumlb.text = @"99851";
    }
    return _PandaRoomNumlb;
}
-(void)layoutSubviews{
    _PandaTopimgView.frame = CGRectMake(RealWidth(10), self.bounds.size.height/2-RealWidth(10), RealWidth(20), RealWidth(20));
    _PandaNumlb.frame = CGRectMake(RealWidth(10), self.bounds.size.height/2-RealWidth(10), RealWidth(20), RealWidth(20));
    _PandaNamelb.frame = CGRectMake(CGRectGetMaxX(_PandaNumlb.frame)+RealWidth(10), RealWidth(10), self.bounds.size.width/4-RealWidth(20), RealWidth(18));
    _PandaDetailb.frame = CGRectMake(CGRectGetMaxX(_PandaNumlb.frame)+RealWidth(10), RealWidth(5)+CGRectGetMaxY(_PandaNamelb.frame), self.bounds.size.width/4-RealWidth(20), RealWidth(13));
    _PandaZonhelb.frame = CGRectMake(self.bounds.size.width/4+RealWidth(20), 0, self.bounds.size.width/4-RealWidth(20), self.bounds.size.height);
    _PandaRatelb.frame = CGRectMake(CGRectGetMaxX(_PandaZonhelb.frame)+RealWidth(20), 0, self.bounds.size.width/4-RealWidth(20), self.bounds.size.height);
    _PandaRoomNumlb.frame = CGRectMake(CGRectGetMaxX(_PandaRatelb.frame)+RealWidth(20), 0, self.bounds.size.width/4-RealWidth(20), self.bounds.size.height);

}
@end
