
#import "PandaMoviewDetailArtoiclCell.h"
@interface PandaMoviewDetailArtoiclCell ()
@property(nonatomic,strong) UIImageView * PandaMovieImgView;
@property(nonatomic,strong) UILabel *    PandaMovieTtitlelb;

@end
@implementation PandaMoviewDetailArtoiclCell
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.contentView.backgroundColor =[UIColor clearColor];
        [self.contentView addSubview:self.PandaMovieImgView];
        [self.contentView addSubview:self.PandaMovieTtitlelb];
    }
    return self;
}
- (UIImageView *)PandaMovieImgView{
    if (!_PandaMovieImgView) {
        _PandaMovieImgView = [UIImageView new];
        _PandaMovieImgView.backgroundColor = LGDLightGaryColor;
        _PandaMovieImgView.layer.cornerRadius = K(25);
        _PandaMovieImgView.layer.masksToBounds = YES;
        _PandaMovieImgView.contentMode = UIViewContentModeScaleAspectFill;
    }
    return _PandaMovieImgView;
}
- (UILabel *)PandaMovieTtitlelb{
    if (!_PandaMovieTtitlelb) {
        _PandaMovieTtitlelb = [[UILabel alloc]init];
        _PandaMovieTtitlelb.textAlignment = NSTextAlignmentCenter;
        _PandaMovieTtitlelb.font = [UIFont systemFontOfSize:13];
        _PandaMovieTtitlelb.text = @"12321321";
    }
    return _PandaMovieTtitlelb;
}
-(void)layoutSubviews{
    _PandaMovieImgView.frame = CGRectMake(self.bounds.size.width/2-K(25), 0, K(50), K(50));
    _PandaMovieTtitlelb.frame = CGRectMake(0, CGRectGetMaxY(_PandaMovieImgView.frame)+K(5), self.bounds.size.width, K(15));
}
- (void)setFilmDic:(NSDictionary *)FilmDic{
    _FilmDic  = FilmDic;
    NSString * imgUrl =  [FilmDic objectForKey:@"img"];
    NSString  * name = [FilmDic objectForKey:@"title"];
    [_PandaMovieImgView sd_setImageWithURL:[NSURL URLWithString:imgUrl]];
    _PandaMovieTtitlelb.text = name;
}
@end
