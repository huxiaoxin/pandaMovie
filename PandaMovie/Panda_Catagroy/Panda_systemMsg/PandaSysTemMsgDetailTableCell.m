#import "PandaSysTemMsgDetailTableCell.h"
@interface PandaSysTemMsgDetailTableCell ()
@property(nonatomic,strong) UILabel * PandasysteTimelb;
@property(nonatomic,strong) UIView  * PandasysteContentView;
@property(nonatomic,strong) UILabel * PandasysteFirstlb;
@property(nonatomic,strong) UILabel * PandasysteDetailb;
@property(nonatomic,strong) UIView  * PandasystelineView;
@property(nonatomic,strong) UILabel * PandasystewatchNumlb;
@end
@implementation PandaSysTemMsgDetailTableCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor =  [UIColor clearColor];
        [self.contentView addSubview:self.PandasysteTimelb];
        [self.contentView addSubview:self.PandasysteContentView];
        [_PandasysteContentView addSubview:self.PandasysteFirstlb];
        [_PandasysteContentView addSubview:self.PandasysteDetailb];
        [_PandasysteContentView addSubview:self.PandasystelineView];
        [_PandasysteContentView addSubview:self.PandasystewatchNumlb];

    }
    return self;
}
- (UILabel *)PandasysteTimelb{
    if (!_PandasysteTimelb) {
        _PandasysteTimelb = [[UILabel alloc]initWithFrame:CGRectMake(SCREEN_Width/2-K(70), K(10), K(140), K(25))];
        _PandasysteTimelb.textAlignment = NSTextAlignmentCenter;
        _PandasysteTimelb.font = [UIFont systemFontOfSize:K(13)];
        _PandasysteTimelb.textColor = [UIColor whiteColor];
        _PandasysteTimelb.text = @"2021-05-29 12:00:00";
        _PandasysteTimelb.layer.cornerRadius = K(12.5);
        _PandasysteTimelb.layer.masksToBounds = YES;
        _PandasysteTimelb.backgroundColor  =  LGDGaryColor;
    }
    return _PandasysteTimelb;
}
- (UIView *)PandasysteContentView{
    if (!_PandasysteContentView) {
        _PandasysteContentView  = [[UIView alloc]initWithFrame:CGRectMake(K(15), CGRectGetMaxY(_PandasysteTimelb.frame)+K(10), SCREEN_Width-K(30), K(120))];
        _PandasysteContentView.layer.cornerRadius = K(5);
        _PandasysteContentView.layer.masksToBounds = YES;
        _PandasysteContentView.layer.borderColor = LGDGaryColor.CGColor;
        _PandasysteContentView.backgroundColor = [UIColor whiteColor];
        _PandasysteContentView.layer.borderWidth = K(1);
    }
    return _PandasysteContentView;
}
- (UILabel *)PandasysteFirstlb{
    if (!_PandasysteFirstlb) {
        _PandasysteFirstlb = [[UILabel alloc]initWithFrame:CGRectMake(K(10), K(10), SCREEN_Width-K(30), K(20))];
        _PandasysteFirstlb.font = [UIFont systemFontOfSize:K(14)];
        _PandasysteFirstlb.textColor =  LGDBLackColor;
        NSTextAttachment * attment = [[NSTextAttachment alloc]init];
        attment.image = [UIImage imageNamed:@"hongdian"];
        attment.bounds = CGRectMake(0, 0, K(10), K(10));
        NSAttributedString * Attbute = [NSAttributedString attributedStringWithAttachment:attment];
        NSString  * TottalTitleStr = @"  ??????5???29???????????????????????????";
        NSMutableAttributedString * Attmuteble = [[NSMutableAttributedString alloc]initWithString:TottalTitleStr];
        [Attmuteble insertAttributedString:Attbute atIndex:0];
        _PandasysteFirstlb.attributedText = Attmuteble;
    }
    return _PandasysteFirstlb;
}
- (UILabel *)PandasysteDetailb{
    if (!_PandasysteDetailb) {
        _PandasysteDetailb = [[UILabel alloc]initWithFrame:CGRectMake(K(10), CGRectGetMaxY(_PandasysteFirstlb.frame)+K(10), SCREEN_Width-K(40), K(40))];
        _PandasysteDetailb.font = [UIFont systemFontOfSize:12];
        _PandasysteDetailb.numberOfLines = 0;
        _PandasysteDetailb.textColor =  LGDBLackColor;
        _PandasysteDetailb.text = @"??????????????????????????????\n?????????????????????????????????????????????2021???5???3???????????????????????????????????????app??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????";
    }
    return _PandasysteDetailb;
}
- (UIView *)PandasystelineView{
    if (!_PandasystelineView) {
        _PandasystelineView = [[UIView alloc]initWithFrame:CGRectMake(K(10), CGRectGetMaxY(_PandasysteDetailb.frame)+K(5), CGRectGetWidth(_PandasysteContentView.frame)-K(20), K(1))];
        _PandasystelineView.backgroundColor  = LGDLightGaryColor;
    }
    return _PandasystelineView;
}
- (UILabel *)PandasystewatchNumlb{
    if (!_PandasystewatchNumlb) {
        _PandasystewatchNumlb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetWidth(_PandasysteContentView.frame)-K(120), CGRectGetMaxY(_PandasystelineView.frame)+K(10), K(100), K(14))];
        _PandasystewatchNumlb.textAlignment =  NSTextAlignmentRight;
        _PandasystewatchNumlb.font = [UIFont systemFontOfSize:K(12)];
        _PandasystewatchNumlb.textColor = LGDBLackColor;
        _PandasystewatchNumlb.text = @"????????????";
    }
    return _PandasystewatchNumlb;
}
@end
