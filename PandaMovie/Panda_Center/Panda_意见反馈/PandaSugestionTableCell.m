

#import "PandaSugestionTableCell.h"
@interface PandaSugestionTableCell ()
{
    UILabel * _PandaSugestionFistrlb;
    UIImageView * _PandaSugestionDeeplb;
}
@end
@implementation PandaSugestionTableCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle =  UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor clearColor];
        UIView * PandaSugestionBtomline = [[UIView alloc]initWithFrame:CGRectMake(K(10), K(49), SCREEN_Width-K(20), 0.5)];
        PandaSugestionBtomline.backgroundColor = LGDLightGaryColor;
        [self.contentView addSubview:PandaSugestionBtomline];
        
        
        UILabel * PandaSugestionFistrlb = [[UILabel alloc]initWithFrame:CGRectMake(K(10), K(12.5), K(240), K(25))];
        
        PandaSugestionFistrlb.font = [UIFont systemFontOfSize:14];
        PandaSugestionFistrlb.textColor =  [UIColor whiteColor];
        
        [self.contentView addSubview:PandaSugestionFistrlb];
        _PandaSugestionFistrlb = PandaSugestionFistrlb;
        
        
        UIImageView * PandaSugestionDeeplb = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_Width-K(40), K(12.5), K(25), K(25))];
        PandaSugestionDeeplb.image = [UIImage imageNamed:@"tousu"];
        [self.contentView addSubview:PandaSugestionDeeplb];
        _PandaSugestionDeeplb = PandaSugestionDeeplb;
        
        
    }
    return self;
}
-(void)setPandaItem:(PandaSugestionModels *)pandaItem{
    _pandaItem = pandaItem;
    _PandaSugestionFistrlb.text = pandaItem.PandaSugestionText;
    _PandaSugestionDeeplb.hidden = !pandaItem.PandaSugestionStatus;
}

@end
