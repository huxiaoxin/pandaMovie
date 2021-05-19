

#import "PandaCatagrotDetailTableViewCell.h"
@interface PandaCatagrotDetailTableViewCell ()
@property(nonatomic,strong) UILabel * pandaFirstTitle;
@end
@implementation PandaCatagrotDetailTableViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self =[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.backgroundColor =[UIColor clearColor];
        [self.contentView addSubview:self.pandaFirstTitle];
        self.selectionStyle =  UITableViewCellSelectionStyleNone;
        
    }
    return self;
}
-(UILabel *)pandaFirstTitle{
    if (!_pandaFirstTitle) {
        _pandaFirstTitle  =[[UILabel alloc]initWithFrame:CGRectMake(K(15), 0, SCREEN_Width-K(30), K(30))];
        _pandaFirstTitle.textColor = [UIColor blueColor];
        _pandaFirstTitle.font = [UIFont systemFontOfSize:14];
        _pandaFirstTitle.text = @"报名时间 | 4/24 00:00 至 5/13 00：00";
    }
    return _pandaFirstTitle;
}
- (void)setPandaText:(NSString *)FilmStr{
    _PandaText = FilmStr;
    
    NSMutableAttributedString * MutablAttr = [[NSMutableAttributedString alloc]initWithString:FilmStr];
//
//    [MutablAttr addAttribute:NSFontAttributeName value:LGDMianColor range:NSMakeRange(0, 4)];
//    [MutablAttr addAttribute:NSFontAttributeName value:LGDGaryColor range:NSMakeRange(4, PandaText.length-4)];

    
    _pandaFirstTitle.attributedText = MutablAttr;
//    _pandaFirstTitle.text = PandaText;
}
-(void)PandaCatagrotDetailTableViewCellConfig:(NSMutableArray *)leftArr PandaIndex:(NSIndexPath *)index{
    
    NSString * myStr  =leftArr[index.row];
    NSString * firstStr;
    
    if (index.row == 0) {
        firstStr = @"报名时间";
    }else if (index.row == 1){
        firstStr = @"活动时间";
    }else if (index.row == 2){
        firstStr = @"活动地点";
    }else{
        firstStr = @"联系电话";
    }
    NSString * SeconStr = [NSString stringWithFormat:@"  %@",myStr];
    
    NSMutableAttributedString * mutablAtr = [[NSMutableAttributedString alloc]initWithString:[NSString stringWithFormat:@"%@%@",firstStr,SeconStr]];
    [mutablAtr addAttribute:NSForegroundColorAttributeName value:LGDRedColor range:NSMakeRange(0, firstStr.length)];
    [mutablAtr addAttribute:NSForegroundColorAttributeName value:LGDGaryColor range:NSMakeRange(firstStr.length, SeconStr.length)];

    _pandaFirstTitle.attributedText = mutablAtr;
    
}
@end
