

#import "PandaMoviewStarViews.h"
#import "WWStarView.h"
@interface PandaMoviewStarViews ()
@property(nonatomic,strong) UILabel * PandaMoviewToplb;
@property(nonatomic,strong) UILabel * PandaMoviewNumlb;
@property(nonatomic,strong) UILabel * PandaMoviewContemetlb;
@property(nonatomic,strong) WWStarView  *  PandaMoviewFiveStar;
@property(nonatomic,strong) WWStarView  *  PandaMoviewwFoureStar;
@property(nonatomic,strong) WWStarView  *  PandaMoviewwThreeStar;
@property(nonatomic,strong) WWStarView  *  PandaMoviewwSecondStar;
@property(nonatomic,strong) WWStarView  *  PandaMoviewwOneStar;
@property(nonatomic,strong) UIProgressView      * PandaMovieFiveProogrese;
@property(nonatomic,strong) UIProgressView      * PandaMovieFoureProogrese;
@property(nonatomic,strong) UIProgressView      * PandaMovieThreeProogrese;
@property(nonatomic,strong) UIProgressView      * PandaMovieTwoProogrese;
@property(nonatomic,strong) UIProgressView      * PandaMovieOneProogrese;

@end
@implementation PandaMoviewStarViews

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.PandaMoviewToplb];
        [self addSubview:self.PandaMoviewNumlb];
        [self addSubview:self.PandaMoviewContemetlb];
        [self addSubview:self.PandaMoviewFiveStar];
        [self addSubview:self.PandaMoviewwFoureStar];
        [self addSubview:self.PandaMoviewwThreeStar];
        [self addSubview:self.PandaMoviewwSecondStar];
        [self addSubview:self.PandaMoviewwOneStar];

        [self addSubview:self.PandaMovieFiveProogrese];
        [self addSubview:self.PandaMovieFoureProogrese];
        [self addSubview:self.PandaMovieThreeProogrese];
        [self addSubview:self.PandaMovieTwoProogrese];
        [self addSubview:self.PandaMovieOneProogrese];

    }
    return self;
}
- (UILabel *)PandaMoviewToplb{
    if (!_PandaMoviewToplb) {
        _PandaMoviewToplb = [[UILabel alloc]initWithFrame:CGRectMake(K(10), K(15), K(120), K(15))];
        _PandaMoviewToplb.textColor = [UIColor whiteColor];
        _PandaMoviewToplb.font = [UIFont boldSystemFontOfSize:14];
        _PandaMoviewToplb.text = @"毒舌综合评分";
    }
    return _PandaMoviewToplb;
}
- (UILabel *)PandaMoviewNumlb{
    if (!_PandaMoviewNumlb) {
        _PandaMoviewNumlb = [[UILabel alloc]initWithFrame:CGRectMake(K(10), CGRectGetMaxY(_PandaMoviewToplb.frame)+K(10), K(120), K(30))];
        _PandaMoviewNumlb.textColor = [UIColor colorWithHexString:@"#F88706"];
        _PandaMoviewNumlb.font = [UIFont boldSystemFontOfSize:25];
        _PandaMoviewNumlb.text= @"8.2";
        
    }
    return _PandaMoviewNumlb;
}
- (UILabel *)PandaMoviewContemetlb{
    if (!_PandaMoviewContemetlb) {
        _PandaMoviewContemetlb = [[UILabel alloc]initWithFrame:CGRectMake(K(10), CGRectGetMaxY(_PandaMoviewNumlb.frame)+K(10), K(200), K(13))];
        _PandaMoviewContemetlb.textColor = [UIColor colorWithHexString:@"#F88706"];
        _PandaMoviewContemetlb.font =[UIFont systemFontOfSize:12];
        _PandaMoviewContemetlb.text = @"23,52评分";
    }
    return _PandaMoviewContemetlb;
}
- (WWStarView *)PandaMoviewFiveStar{
    if (!_PandaMoviewFiveStar) {
        _PandaMoviewFiveStar = [[WWStarView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaMoviewNumlb.frame), CGRectGetMinY(_PandaMoviewNumlb.frame)-K(20), K(60), K(15)) numberOfStars:5 currentStar:5 rateStyle:WholeStar isAnination:YES andamptyImageName:@"xingxing-nomal" fullImageName:@"xingxing" finish:^(CGFloat currentStar) {
            
        }];
        _PandaMoviewFiveStar.userInteractionEnabled = NO;
    }
    return _PandaMoviewFiveStar;
}
- (WWStarView *)PandaMoviewwFoureStar{
    if (!_PandaMoviewwFoureStar) {
        _PandaMoviewwFoureStar = [[WWStarView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaMoviewNumlb.frame), CGRectGetMaxY(_PandaMoviewFiveStar.frame), K(60), K(15)) numberOfStars:5 currentStar:4 rateStyle:WholeStar isAnination:YES andamptyImageName:@"xingxing-nomal" fullImageName:@"xingxing" finish:^(CGFloat currentStar) {
        }];
        _PandaMoviewwFoureStar.userInteractionEnabled = NO;
    }
    return _PandaMoviewwFoureStar;
}
- (WWStarView *)PandaMoviewwThreeStar{
    if (!_PandaMoviewwThreeStar) {
        _PandaMoviewwThreeStar = [[WWStarView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaMoviewNumlb.frame), CGRectGetMaxY(_PandaMoviewwFoureStar.frame), K(60), K(15)) numberOfStars:5 currentStar:3 rateStyle:WholeStar isAnination:YES andamptyImageName:@"xingxing-nomal" fullImageName:@"xingxing" finish:^(CGFloat currentStar) {
        }];
        _PandaMoviewwThreeStar.userInteractionEnabled = NO;
    }
    return _PandaMoviewwThreeStar;
}
- (WWStarView *)PandaMoviewwSecondStar{
    if (!_PandaMoviewwSecondStar) {
        _PandaMoviewwSecondStar = [[WWStarView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaMoviewNumlb.frame), CGRectGetMaxY(_PandaMoviewwThreeStar.frame), K(60), K(15)) numberOfStars:5 currentStar:2 rateStyle:WholeStar isAnination:YES andamptyImageName:@"xingxing-nomal" fullImageName:@"xingxing" finish:^(CGFloat currentStar) {
        }];
        _PandaMoviewwSecondStar.userInteractionEnabled = NO;

    }
    return _PandaMoviewwSecondStar;
}
- (WWStarView *)PandaMoviewwOneStar{
    if (!_PandaMoviewwOneStar) {
        _PandaMoviewwOneStar = [[WWStarView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaMoviewNumlb.frame), CGRectGetMaxY(_PandaMoviewwSecondStar.frame), K(60), K(15)) numberOfStars:5 currentStar:1 rateStyle:WholeStar isAnination:YES andamptyImageName:@"xingxing-nomal" fullImageName:@"xingxing" finish:^(CGFloat currentStar) {
        }];
        _PandaMoviewwOneStar.userInteractionEnabled = NO;
    }
    return _PandaMoviewwOneStar;
}
- (UIProgressView *)PandaMovieFiveProogrese{
    if (!_PandaMovieFiveProogrese) {
        _PandaMovieFiveProogrese = [[UIProgressView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaMoviewFiveStar.frame)+K(5), CGRectGetMidY(_PandaMoviewFiveStar.frame)-K(4), K(140), K(10))];
        _PandaMovieFiveProogrese.tintColor = [UIColor colorWithHexString:@"#F88706"];
        _PandaMovieFiveProogrese.trackTintColor = LGDGaryColor;
        _PandaMovieFiveProogrese.progress = 0.4;
    }
    return _PandaMovieFiveProogrese;
}
- (UIProgressView *)PandaMovieFoureProogrese{
    if (!_PandaMovieFoureProogrese) {
        _PandaMovieFoureProogrese = [[UIProgressView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaMoviewFiveStar.frame)+K(5), CGRectGetMidY(_PandaMoviewwFoureStar.frame)-K(4), K(140), K(10))];
        _PandaMovieFoureProogrese.tintColor = [UIColor colorWithHexString:@"#F88706"];
        _PandaMovieFoureProogrese.trackTintColor = LGDGaryColor;
        _PandaMovieFoureProogrese.progress = 0.2;
    }
    return _PandaMovieFoureProogrese;
}
- (UIProgressView *)PandaMovieThreeProogrese{
    if (!_PandaMovieThreeProogrese) {
        _PandaMovieThreeProogrese = [[UIProgressView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaMoviewFiveStar.frame)+K(5), CGRectGetMidY(_PandaMoviewwThreeStar.frame)-K(4), K(140), K(10))];
        _PandaMovieThreeProogrese.tintColor = [UIColor colorWithHexString:@"#F88706"];
        _PandaMovieThreeProogrese.trackTintColor = LGDGaryColor;
        _PandaMovieThreeProogrese.progress = 0.6;
    }
    return _PandaMovieThreeProogrese;
}
- (UIProgressView *)PandaMovieTwoProogrese{
    if (!_PandaMovieTwoProogrese) {
        _PandaMovieTwoProogrese = [[UIProgressView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaMoviewFiveStar.frame)+K(5), CGRectGetMidY(_PandaMoviewwSecondStar.frame)-K(4), K(140), K(10))];
        _PandaMovieTwoProogrese.tintColor = [UIColor colorWithHexString:@"#F88706"];
        _PandaMovieTwoProogrese.trackTintColor = LGDGaryColor;
        _PandaMovieTwoProogrese.progress = 0.6;
    }
    return _PandaMovieTwoProogrese;
}
- (UIProgressView *)PandaMovieOneProogrese{
    if (!_PandaMovieOneProogrese) {
        _PandaMovieOneProogrese = [[UIProgressView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaMoviewFiveStar.frame)+K(5), CGRectGetMidY(_PandaMoviewwOneStar.frame)-K(4), K(140), K(10))];
        _PandaMovieOneProogrese.tintColor = [UIColor colorWithHexString:@"#F88706"];
        _PandaMovieOneProogrese.trackTintColor = LGDGaryColor;
        _PandaMovieOneProogrese.progress = 0.6;
    }
    return _PandaMovieOneProogrese;
}
- (void)setPandmoviitem:(PandaMovieModel *)filmHomeModel{
    _pandmoviitem = filmHomeModel;
    
    _PandaMoviewToplb.text = [NSString stringWithFormat:@"%@综合评分",filmHomeModel.PandaMoviewName];
    
    _PandaMoviewNumlb.text =  [NSString stringWithFormat:@"%.1f",filmHomeModel.PandaMoview_DBNums];
    _PandaMoviewContemetlb.text =  [NSString stringWithFormat:@"%ld评分",(long)filmHomeModel.PandaMoview_soureNums];
    [_PandaMovieFiveProogrese setProgress :filmHomeModel.PandaMoviewstar_five animated:YES];
    _PandaMovieFoureProogrese.progress = filmHomeModel.PandaMoviewstar_foure;
    _PandaMovieThreeProogrese.progress = filmHomeModel.PandaMoviewstar_three;
    _PandaMovieTwoProogrese.progress = filmHomeModel.PandaMoviewstar_two;
    _PandaMovieOneProogrese.progress = filmHomeModel.PandaMoviewstar_one;
}
@end
