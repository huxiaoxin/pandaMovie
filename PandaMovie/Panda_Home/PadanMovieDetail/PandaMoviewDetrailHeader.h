//
//  PandaMoviewDetrailHeader.h
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/20.
//

#import <UIKit/UIKit.h>
#import "PandaMovieModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface PandaMoviewDetrailHeader : UIView
-(instancetype)initWithFrame:(CGRect)frame ConfiguractionWith:(PandaMovieModel *)pandaItem;
@property(nonatomic,assign) CGFloat PandaMoviewHeaight;
@property(nonatomic,copy) NSArray * pandaArticlArr;
@end

NS_ASSUME_NONNULL_END
