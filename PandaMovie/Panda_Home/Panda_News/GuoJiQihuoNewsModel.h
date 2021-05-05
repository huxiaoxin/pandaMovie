
#import "PandaBaseModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface GuoJiQihuoNewsModel : PandaBaseModel
@property (nonatomic , copy) NSString              * category;
@property (nonatomic , copy) NSString              * content;
@property (nonatomic , copy) NSString              * time;
@property (nonatomic , copy) NSString              * src;
@property (nonatomic , copy) NSString              * pic;
@property (nonatomic , copy) NSString              * title;
@property (nonatomic , copy) NSString              * weburl;
@property (nonatomic , copy) NSString              * url;
@property(nonatomic,assign) CGFloat      height;
@property(nonatomic,assign) CGFloat    width;
@end

NS_ASSUME_NONNULL_END
