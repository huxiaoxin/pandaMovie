
#import "PandaZoneJubaoTableViewCell.h"
@interface PandaZoneJubaoTableViewCell ()
{
    UILabel * _PandaInfoFirstlb;
    UIImageView * _PandaInfoDeeplb;
}
@end
@implementation PandaZoneJubaoTableViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.selectionStyle =  UITableViewCellSelectionStyleNone;
        UIView * PandaInfoBtomline = [[UIView alloc]initWithFrame:CGRectMake(K(15), K(49), SCREEN_Width-K(30), K(1))];
        PandaInfoBtomline.backgroundColor = LGDLightGaryColor;
        [self.contentView addSubview:PandaInfoBtomline];
        
        UILabel * PandaInfoFirstlb  = [[UILabel alloc]initWithFrame:CGRectMake(K(15), 0, K(200), K(49))];
        PandaInfoFirstlb.font = KSysFont(15);
        PandaInfoFirstlb.textColor = LGDBLackColor;
        [self.contentView addSubview:PandaInfoFirstlb];
        _PandaInfoFirstlb = PandaInfoFirstlb;
        
        
        UIImageView * PandaInfoDeeplb  = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_Width-K(35), K(15), K(20), K(20))];
        [self.contentView addSubview:PandaInfoDeeplb];
        _PandaInfoDeeplb = PandaInfoDeeplb;
        
    }
    return self;
}
-(void)setFilmItem:(PandaZoneJubaoModel *)FilmItem{
    _FilmItem = FilmItem;
    _PandaInfoFirstlb.text = FilmItem.PandaText;
    _PandaInfoDeeplb.image = [UIImage imageNamed:FilmItem.PandaStatus ? @"xuanzhong1" : @"xuanzhongyuandian"];
    
}
@end
