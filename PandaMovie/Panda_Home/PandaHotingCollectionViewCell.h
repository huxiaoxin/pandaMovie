//
//  PandaHotingCollectionViewCell.h
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/5.
//

#import <UIKit/UIKit.h>
#import "PandaMovieModel.h"
NS_ASSUME_NONNULL_BEGIN
@protocol PandaHotingCollectionViewCellDelegate <NSObject>

-(void)PandaHotingCollectionViewCellBtnDidClickWithCellIndex:(NSInteger)CellIndex;

@end
@interface PandaHotingCollectionViewCell : UICollectionViewCell
@property(nonatomic,weak) id <PandaHotingCollectionViewCellDelegate>delegate;
@property(nonatomic,strong) PandaMovieModel * pandaModel;
@end

NS_ASSUME_NONNULL_END
