//
//  PandaBangdanTableViewCell.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/5.
//

#import "PandaBangdanTableViewCell.h"
@interface PandaBangdanTableViewCell ()
@property(nonatomic,strong) UIImageView * PandaTopimgView;
@property(nonatomic,strong) UILabel     * PandaNumlb;
@property(nonatomic,strong) UILabel     * PandaNamelb;
@property(nonatomic,strong) UILabel     * PandaDetailb;
@end
@implementation PandaBangdanTableViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor clearColor];
        
    }
    return self;
}
@end
