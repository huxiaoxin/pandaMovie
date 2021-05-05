#import <UIKit/UIKit.h>
@class GuoJiQiqhuoNewsViewLayout;
@protocol  LMHWaterFallLayoutDeleaget<NSObject>
@required
- (CGFloat)waterFallLayout:(GuoJiQiqhuoNewsViewLayout *)waterFallLayout heightForItemAtIndexPath:(NSUInteger)indexPath itemWidth:(CGFloat)itemWidth;
@optional
- (NSUInteger)columnCountInWaterFallLayout:(GuoJiQiqhuoNewsViewLayout *)waterFallLayout;
- (CGFloat)columnMarginInWaterFallLayout:(GuoJiQiqhuoNewsViewLayout *)waterFallLayout;
- (CGFloat)rowMarginInWaterFallLayout:(GuoJiQiqhuoNewsViewLayout *)waterFallLayout;
- (UIEdgeInsets)edgeInsetdInWaterFallLayout:(GuoJiQiqhuoNewsViewLayout *)waterFallLayout;
@end
@interface GuoJiQiqhuoNewsViewLayout : UICollectionViewLayout
@property (nonatomic, weak) id<LMHWaterFallLayoutDeleaget> delegate;
@end
