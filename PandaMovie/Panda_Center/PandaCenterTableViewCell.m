//
//  PandaCenterTableViewCell.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/17.
//

#import "PandaCenterTableViewCell.h"
@interface PandaCenterTableViewCell ()
@property(nonatomic,strong) UIImageView * PandaIconImgView;
@property(nonatomic,strong) UILabel     * Pandalb;
@property(nonatomic,strong) UIImageView * PandaRightimgView;
@property(nonatomic,strong) UILabel     * PandaRightlb;
@property(nonatomic,strong) UIView      * PandaBtomline;
@end
@implementation PandaCenterTableViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.backgroundColor = [UIColor clearColor];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self.contentView addSubview:self.PandaIconImgView];
        [self.contentView addSubview:self.Pandalb];
        [self.contentView addSubview:self.PandaRightimgView];
        [self.contentView addSubview:self.PandaRightlb];
        [self.contentView addSubview:self.PandaBtomline];

        
    }
    return self;
}
- (UIImageView *)PandaIconImgView{
    if (!_PandaIconImgView) {
        _PandaIconImgView = [[UIImageView alloc]initWithFrame:CGRectMake(RealWidth(20), RealWidth(18.5), RealWidth(28), RealWidth(28))];
//        _PandaIconImgView.backgroundColor = [UIColor redColor];
        
    }
    return _PandaIconImgView;
}
- (UILabel *)Pandalb{
    if (!_Pandalb) {
        _Pandalb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaIconImgView.frame)+RealWidth(5), CGRectGetMidY(_PandaIconImgView.frame)-RealWidth(7.5), RealWidth(160), RealWidth(15))];
        _Pandalb.textColor = [UIColor whiteColor];
        _Pandalb.font = [UIFont systemFontOfSize:15];
        _Pandalb.text = @"";
    }
    return _Pandalb;
}
- (UIImageView *)PandaRightimgView{
    if (!_PandaRightimgView) {
        _PandaRightimgView = [[UIImageView alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH-RealWidth(30), CGRectGetMidY(_PandaIconImgView.frame)-RealWidth(7.5), RealWidth(15), RealWidth(15))];
        _PandaRightimgView.image = [UIImage imageNamed:@"you-green"];
    }
    return _PandaRightimgView;
    
}
- (UILabel *)PandaRightlb{
    if (!_PandaRightlb) {
        _PandaRightlb = [[UILabel alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH-RealWidth(130), CGRectGetMidY(_PandaIconImgView.frame)-RealWidth(7.5), RealWidth(100), RealWidth(15))];
        _PandaRightlb.textColor = LGDGaryColor;
        _PandaRightlb.font = [UIFont systemFontOfSize:15];
        _PandaRightlb.text = @"0.12M";
        _PandaRightlb.textAlignment = NSTextAlignmentRight;
    }
    return _PandaRightlb;
}
- (UIView *)PandaBtomline{
    if (!_PandaBtomline) {
        _PandaBtomline = [[UIView alloc]initWithFrame:CGRectMake(0, RealWidth(44.5), GK_SCREEN_WIDTH, 0.5)];
    }
    return _PandaBtomline;
}
-(void)PandaCenterTableViewCellConfigWithDataArr:(NSMutableArray *)dataArr indexPath:(NSIndexPath * )indexPath{
    NSString  * PandaStr = dataArr[indexPath.section][indexPath.row];
    _Pandalb.text = PandaStr;
    _PandaIconImgView.image = [UIImage imageNamed:PandaStr];
    if (indexPath.section == 1) {
        if (indexPath.row ==0) {
            _PandaRightlb.hidden  = NO;
            _PandaRightlb.text = [NSString stringWithFormat:@"%.2fM",[self PandaCenterCacoutlaSize]];
        }else{
            _PandaRightlb.hidden = YES;
        }
    }else if (indexPath.section == 2){
        if (indexPath.row == 1) {
            _PandaRightlb.hidden = @"V_1.0.0";
        }else{
            _PandaRightlb.hidden = YES;
        }
       
    }else{
        _PandaRightlb.hidden = YES;
    }
}
- (CGFloat)PandaCenterCacoutlaSize{
    CGFloat PandaCenterCacoutlaSize = 0.0;
    NSString *cachePath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory,NSUserDomainMask,YES)firstObject];
    NSArray *files = [[NSFileManager defaultManager] subpathsAtPath:cachePath];
    for(NSString *path in files) {
        NSString*filePath = [cachePath stringByAppendingString:[NSString stringWithFormat:@"/%@",path]];
        PandaCenterCacoutlaSize += [[NSFileManager defaultManager]attributesOfItemAtPath:filePath error:nil].fileSize;
    }
    CGFloat sizeM = PandaCenterCacoutlaSize /1024.0/1024.0;
    
    return sizeM;
}
@end
