
#import "PandaHomeNewsTableViewCell.h"
@interface PandaHomeNewsTableViewCell ()
{
    UILabel * _WindwoundNewsTitle;
    UILabel * _WindwoundTimelb;
    UIImageView * _WindwoundNewsImgView;
}
@end
@implementation PandaHomeNewsTableViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle =  UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor clearColor];
        UILabel * WindwoundNewsTitle = [[UILabel alloc]initWithFrame:CGRectMake(K(10), K(10), SCREEN_Width-K(160), K(50))];
        WindwoundNewsTitle.numberOfLines = 2;
        WindwoundNewsTitle.font = KSysFont(16);
        WindwoundNewsTitle.textColor = [UIColor whiteColor];
        WindwoundNewsTitle.text =  @"美联储会仪美联储会仪美联储会仪美联储会仪美联储会仪美联储会仪美联储会仪美联储会仪美联储会仪美联储会仪美联储会仪美联储会仪美联储会仪美联储会仪美联储会仪美联储会仪美联储会仪美联储会仪";
        [self.contentView addSubview:WindwoundNewsTitle];
        _WindwoundNewsTitle = WindwoundNewsTitle;
        
        
        
        UIImageView * WindwoundNewsImgView = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_Width-K(140), K(10), K(120), K(80))];
        [self.contentView addSubview:WindwoundNewsImgView];
        _WindwoundNewsImgView = WindwoundNewsImgView;
        
        
        UILabel * WindwoundNewsTypeonelb = [[UILabel alloc]initWithFrame:CGRectMake(K(10), K(70), K(70), K(18))];
        WindwoundNewsTypeonelb.text = @"信管家期货宝";
        WindwoundNewsTypeonelb.layer.cornerRadius = K(4);
        WindwoundNewsTypeonelb.layer.masksToBounds = YES;
        WindwoundNewsTypeonelb.textColor = LGDGaryColor;
        WindwoundNewsTypeonelb.backgroundColor = LGDLightGaryColor;
        WindwoundNewsTypeonelb.font = KSysFont(12);
        WindwoundNewsTypeonelb.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:WindwoundNewsTypeonelb];
        

        UILabel * WindwoundTimelb = [[UILabel alloc]initWithFrame:CGRectMake(K(120-60), K(72), K(80+30+30), K(15))];
        WindwoundTimelb.textAlignment = NSTextAlignmentRight;
        WindwoundTimelb.font = KSysFont(12);
        WindwoundTimelb.textColor = LGDGaryColor;
        WindwoundTimelb.text = @"35分钟前";
        [self.contentView addSubview:WindwoundTimelb];
        _WindwoundTimelb = WindwoundTimelb;
        
        
        UIView * WindwoundNewsline = [[UIView alloc]initWithFrame:CGRectMake(K(10), K(99), SCREEN_Width-K(20), K(1))];
        WindwoundNewsline.backgroundColor = LGDLightGaryColor;
        [self.contentView addSubview:WindwoundNewsline];
    }
    return self;
}
-(void)setWindtrendItem:(GuoJiQihuoNewsModel *)windtrendItem{
    _windtrendItem  = windtrendItem;
    _WindwoundNewsTitle.text = windtrendItem.title;
    _WindwoundTimelb.text = windtrendItem.time;
    [_WindwoundNewsImgView sd_setImageWithURL:[NSURL URLWithString:windtrendItem.pic]];
}
@end

