

#import <UIKit/UIKit.h>
#import "PandaZoneModel.h"
NS_ASSUME_NONNULL_BEGIN
@protocol PandaZoneHeaderDelegate <NSObject>

-(void)FilmFacorryZoneDetailheaderWithBtnIndex:(NSInteger)btnIndex;
@end
@interface PandaZoneDetailheadeView : UIView
@property(nonatomic,assign) CGFloat PandaZoneHeaderHeight;
@property(nonatomic,weak) id <PandaZoneHeaderDelegate>delegate;
-(instancetype)initWithFrame:(CGRect)frame ConfigZoneModel:(PandaZoneModel *)zoneModel;
@end

NS_ASSUME_NONNULL_END
