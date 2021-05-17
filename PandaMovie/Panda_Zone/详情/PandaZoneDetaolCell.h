#import <UIKit/UIKit.h>
#import "PandaZoneModel.h"
NS_ASSUME_NONNULL_BEGIN
@protocol PandaZoneDetaolCellDelegate <NSObject>

-(void)PandaZoneDetaolCellZoneDetiaCellDetailTableViewCellWithIndex:(NSInteger)Cellindex PandaZoneDetaolCellZoneDetiaCellbtnTag:(NSInteger)btnIndex;

@end
@interface PandaZoneDetaolCell : UITableViewCell
@property(nonatomic,strong) PandaZoneModel * comentModel;
@property(nonatomic,weak) id <PandaZoneDetaolCellDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
