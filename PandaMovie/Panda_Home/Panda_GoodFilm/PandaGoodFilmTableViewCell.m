//
//  PandaGoodFilmTableViewCell.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/6.
//

#import "PandaGoodFilmTableViewCell.h"
@interface PandaGoodFilmTableViewCell ()
@property(nonatomic,strong) UIImageView * PandaThubImgView;
@property(nonatomic,strong) UILabel     * PandaToplb;
@property(nonatomic,strong) UILabel     * PandaEngilshNamelb;
@property(nonatomic,strong) UILabel     * PandaTimeComminglb;
@property(nonatomic,strong) UILabel     * PandaArticlb;
@property(nonatomic,strong) UILabel     * PandaWatchNumlb;
@end
@implementation PandaGoodFilmTableViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor clearColor];
        [self.contentView addSubview:self.PandaThubImgView];
        [self.contentView addSubview:self.PandaToplb];
        [self.contentView addSubview:self.PandaEngilshNamelb];
        [self.contentView addSubview:self.PandaTimeComminglb];
        [self.contentView addSubview:self.PandaArticlb];

        [self.contentView addSubview:self.PandaWatchNumlb];
    }
    return self;
}
- (UIImageView *)PandaThubImgView{
    if (!_PandaThubImgView) {
        _PandaThubImgView =[[UIImageView alloc]initWithFrame:CGRectMake(RealWidth(10), RealWidth(10), RealWidth(80), RealWidth(100))];
        _PandaThubImgView.contentMode =  UIViewContentModeScaleAspectFill;
        _PandaThubImgView.layer.masksToBounds = YES;
        _PandaThubImgView.layer.cornerRadius = RealWidth(5);
        [_PandaThubImgView sd_setImageWithURL:[NSURL URLWithString:@"https://pics7.baidu.com/feed/8694a4c27d1ed21b7e30a8d823d6ffc250da3f54.jpeg?token=1377e3615938cdb5f6b8d146c1a34ac8&s=22B15A83441305D01CD4300D0100E0C1"]];
    }
    return _PandaThubImgView;
}
- (UILabel *)PandaToplb{
    if (!_PandaToplb) {
        _PandaToplb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaThubImgView.frame)+RealWidth(5), CGRectGetMinY(_PandaThubImgView.frame)+RealWidth(0), GK_SCREEN_WIDTH-CGRectGetMaxX(_PandaThubImgView.frame)-RealWidth(10), RealWidth(17))];
        _PandaToplb.text = @"速度与激情9--特别行动";
        _PandaToplb.font = [UIFont systemFontOfSize:16];
        _PandaToplb.textColor = [UIColor whiteColor];
    }
    return _PandaToplb;
}
- (UILabel *)PandaEngilshNamelb{
    if (!_PandaEngilshNamelb) {
        _PandaEngilshNamelb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaThubImgView.frame)+RealWidth(5), CGRectGetMaxY(_PandaToplb.frame)+RealWidth(5), GK_SCREEN_WIDTH-CGRectGetMaxX(_PandaThubImgView.frame)-RealWidth(10), RealWidth(15))];
        _PandaEngilshNamelb.text = @"Fast and Furious 9";
        _PandaEngilshNamelb.font = [UIFont systemFontOfSize:13];
        _PandaEngilshNamelb.textColor = [UIColor colorWithHexString:@"9F9FA5"];
    }
    return _PandaEngilshNamelb;
}
- (UILabel *)PandaTimeComminglb{
    if (!_PandaTimeComminglb) {
        _PandaTimeComminglb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaThubImgView.frame)+RealWidth(5), CGRectGetMaxY(_PandaEngilshNamelb.frame)+RealWidth(5), GK_SCREEN_WIDTH-CGRectGetMaxX(_PandaThubImgView.frame)-RealWidth(10), RealWidth(15))];
        _PandaEngilshNamelb.font = [UIFont systemFontOfSize:13];
        _PandaEngilshNamelb.textColor = [UIColor colorWithHexString:@"FD8007"];
       
    }
    return _PandaTimeComminglb;
}
- (UILabel *)PandaArticlb{
    if (!_PandaArticlb) {
        _PandaArticlb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaThubImgView.frame)+RealWidth(5), CGRectGetMaxY(_PandaTimeComminglb.frame)+RealWidth(5), GK_SCREEN_WIDTH-CGRectGetMaxX(_PandaThubImgView.frame)-RealWidth(10), RealWidth(15))];
        _PandaArticlb.font = [UIFont systemFontOfSize:13];
        _PandaArticlb.textColor = [UIColor colorWithHexString:@"9F9FA5"];
        _PandaArticlb.text = @"吴京、张三丰、吴凯家、牙真疼、好家伙、吴玉生";
    }
    return _PandaArticlb;
}
- (UILabel *)PandaWatchNumlb{
    if (!_PandaWatchNumlb) {
        _PandaWatchNumlb = [[UILabel alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH-RealWidth(120), CGRectGetMinY(_PandaThubImgView.frame)+RealWidth(5), RealWidth(110), RealWidth(15))];
        _PandaWatchNumlb.textAlignment = NSTextAlignmentRight;
      

    }
    return _PandaWatchNumlb;
}
- (void)setPandamodel:(PandaMovieModel *)pandamodel{
    _pandamodel = pandamodel;
    [_PandaThubImgView sd_setImageWithURL:[NSURL URLWithString:pandamodel.imgTubUrl] placeholderImage:[UIImage imageNamed:@"zhanweitu"]];
    _PandaEngilshNamelb.text = pandamodel.englishNae;
    _PandaArticlb.text = pandamodel.articlList;

    if (pandamodel.shangyinNum == 0) {
        NSString * pandaTotaolStr = @"已经上映";
        NSMutableAttributedString * PandaMutableAttbure = [[NSMutableAttributedString alloc]initWithString:pandaTotaolStr];
        [PandaMutableAttbure addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:13] range:NSMakeRange(0, pandaTotaolStr.length)];
        [PandaMutableAttbure addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithHexString:@"9F9FA5"] range:NSMakeRange(0, pandaTotaolStr.length)];
        _PandaTimeComminglb.attributedText = PandaMutableAttbure;
    }else{
        NSString * PandaFirstStr = @"还有";
        NSString * PandaSeconStr = [NSString stringWithFormat:@"%ld",pandamodel.shangyinNum];
        NSString * PandaThreeStr = @"天上映";
        NSString * PandaFoureStr = @" 中国大陆";
        NSString * pandaTotaolStr = [NSString stringWithFormat:@"%@%@%@%@",PandaFirstStr,PandaSeconStr,PandaThreeStr,PandaFoureStr];
        NSMutableAttributedString * PandaMutableAttbure = [[NSMutableAttributedString alloc]initWithString:pandaTotaolStr];
        [PandaMutableAttbure addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:13] range:NSMakeRange(0, pandaTotaolStr.length)];
        [PandaMutableAttbure addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithHexString:@"9F9FA5"] range:NSMakeRange(0, PandaFirstStr.length)];
        [PandaMutableAttbure addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithHexString:@"FD8007"] range:NSMakeRange(PandaFirstStr.length, PandaSeconStr.length)];
        [PandaMutableAttbure addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithHexString:@"9F9FA5"] range:NSMakeRange(PandaFirstStr.length+PandaSeconStr.length, PandaThreeStr.length)];
        [PandaMutableAttbure addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithHexString:@"9F9FA5"] range:NSMakeRange(PandaFirstStr.length+PandaSeconStr.length+PandaThreeStr.length, PandaFoureStr.length)];
        _PandaTimeComminglb.attributedText = PandaMutableAttbure;
    }
    
    
    
    NSString * PandaFirstStr =  pandamodel.watchingNum;
    NSString * PandaSecondStr = @"  想看";
    NSString * pandaThreeStr = [NSString stringWithFormat:@"%@%@",PandaFirstStr,PandaSecondStr];
    NSMutableAttributedString * PandaAtttbure = [[NSMutableAttributedString alloc]initWithString:pandaThreeStr];
    [PandaAtttbure addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:16] range:NSMakeRange(0, PandaFirstStr.length)];
    [PandaAtttbure addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithHexString:@"FD8007"] range:NSMakeRange(0, PandaFirstStr.length)];

    [PandaAtttbure addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:13] range:NSMakeRange(PandaFirstStr.length, PandaSecondStr.length)];
    [PandaAtttbure addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(PandaFirstStr.length, PandaSecondStr.length)];

    _PandaWatchNumlb.attributedText = PandaAtttbure;
    _PandaToplb.text =  pandamodel.famous;
}
@end
