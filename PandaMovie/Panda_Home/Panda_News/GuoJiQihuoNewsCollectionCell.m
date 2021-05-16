
#import "GuoJiQihuoNewsCollectionCell.h"
@interface GuoJiQihuoNewsCollectionCell ()
@property(nonatomic,strong) UIView * GuoJiNewsViews;
@property(nonatomic,strong) UIImageView * GuoJiNewsImgViews;
@property(nonatomic,strong) UILabel * GuoJiNewsTitlelbs;
@property(nonatomic,strong) UILabel *GuoJiNewsDetailbs;
@end
@implementation GuoJiQihuoNewsCollectionCell
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        UIView * GuoJiNewsViews = [[UIView alloc]initWithFrame:CGRectMake(0, 0, K(10), K(10))];
        GuoJiNewsViews.backgroundColor  =  [UIColor whiteColor];
        GuoJiNewsViews.layer.cornerRadius =  K(5);
        GuoJiNewsViews.layer.masksToBounds = YES;
        [self.contentView addSubview:GuoJiNewsViews];
        _GuoJiNewsViews = GuoJiNewsViews;
        
        UIImageView * GuoJiNewsImgViews = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, K(10), K(10))];    [GuoJiNewsViews addSubview:GuoJiNewsImgViews];
        _GuoJiNewsImgViews  =GuoJiNewsImgViews;
        
        
        UILabel * GuoJiNewsTitlelbs = [[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(GuoJiNewsImgViews.frame)+K(5), 0, 0)];
        GuoJiNewsTitlelbs.numberOfLines =  0;
        GuoJiNewsTitlelbs.textColor = LGDBLackColor;
        GuoJiNewsTitlelbs.textAlignment = NSTextAlignmentCenter;
        GuoJiNewsTitlelbs.font = KBlFont(13);
        [GuoJiNewsViews addSubview:GuoJiNewsTitlelbs];
        _GuoJiNewsTitlelbs = GuoJiNewsTitlelbs;
        
        
        UILabel *GuoJiNewsDetailbs = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
        GuoJiNewsDetailbs.numberOfLines = 0;
        GuoJiNewsDetailbs.textColor = LGDGaryColor;
        GuoJiNewsDetailbs.font = KSysFont(11);
        [GuoJiNewsViews addSubview:GuoJiNewsDetailbs];
        _GuoJiNewsDetailbs = GuoJiNewsDetailbs;
        
        
    }
    return self;
}
- (void)setGuoJiNewsItem:(ShuyunHomeNewsModel *)GuoJiNewsItem{
    _GuoJiNewsItem = GuoJiNewsItem;
    [_GuoJiNewsImgViews sd_setImageWithURL:[NSURL URLWithString:GuoJiNewsItem.imgUrl]];
       _GuoJiNewsTitlelbs.text =  GuoJiNewsItem.title;
       _GuoJiNewsDetailbs.text = [self removeHtmlWithString:GuoJiNewsItem.content];
}
-(void)layoutSubviews{
    _GuoJiNewsViews.frame = self.bounds;
    _GuoJiNewsImgViews.frame=CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height-K(100));
    CGRect RFVRect  = [_GuoJiNewsItem.title cxl_sizeWithMoreString:KBlFont(13) maxWidth:self.bounds.size.width];
    _GuoJiNewsTitlelbs.frame = CGRectMake(0, CGRectGetMaxY(_GuoJiNewsImgViews.frame)+K(10), RFVRect.size.width, RFVRect.size.height);
    _GuoJiNewsDetailbs.frame = CGRectMake(0, CGRectGetMaxY(_GuoJiNewsTitlelbs.frame)+K(10), self.bounds.size.width, K(50));
}
-(NSString *)removeHtmlWithString:(NSString *)htmlString{
    NSRegularExpression * regularExpretion=[NSRegularExpression regularExpressionWithPattern:@"<[^>]*>|\n" options:0 error:nil];
    htmlString = [regularExpretion stringByReplacingMatchesInString:htmlString options:NSMatchingReportProgress range:NSMakeRange(0, htmlString.length) withTemplate:@""];
    return htmlString;
}

@end
