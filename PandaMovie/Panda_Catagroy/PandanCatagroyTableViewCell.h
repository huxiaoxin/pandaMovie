//
//  PandanCatagroyTableViewCell.h
//  PandaMovie
//
//  Created by codehzx on 2021/5/15.
//

#import <UIKit/UIKit.h>
#import "PadaCatagoryweizhiModel.h"
NS_ASSUME_NONNULL_BEGIN
@protocol PandanCatagroyTableViewCellDelegate <NSObject>

-(void)PandanCatagroyTableViewCellWithBtnClickCellInex:(NSInteger)cellIndex;

@end
@interface PandanCatagroyTableViewCell : UITableViewCell
@property(nonatomic,weak) id <PandanCatagroyTableViewCellDelegate>delegate;
@property(nonatomic,strong) PadaCatagoryweizhiModel * pandaModel;
@end

NS_ASSUME_NONNULL_END
