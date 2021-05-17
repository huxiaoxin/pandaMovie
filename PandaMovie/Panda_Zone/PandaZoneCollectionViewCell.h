//
//  PandaZoneCollectionViewCell.h
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/17.
//

#import <UIKit/UIKit.h>
#import "PandaZoneModel.h"
NS_ASSUME_NONNULL_BEGIN
@protocol PandaZoneCollectionViewCellDelegate <NSObject>

-(void)PandaZoneCollectionViewCellWithIndex:(NSInteger)Index btnIndex:(NSInteger)btnindex;

@end
@interface PandaZoneCollectionViewCell : UICollectionViewCell
@property(nonatomic,strong) PandaZoneModel * pandaModel;
@property(nonatomic,strong) UIImageView * PandaZoneThubImgView;

@property(nonatomic,weak) id <PandaZoneCollectionViewCellDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
