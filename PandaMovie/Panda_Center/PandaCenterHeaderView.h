//
//  PandaCenterHeaderView.h
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/17.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol PandaCenterHeaderViewDelegate <NSObject>

-(void)PandaCenterHeaderViewWithChangeInfo;

@end
@interface PandaCenterHeaderView : UIView
@property(nonatomic,weak) id <PandaCenterHeaderViewDelegate>delegate;
@property(nonatomic,strong) UIImageView * PandauserImgView;
@property(nonatomic,strong) UILabel     * Pandausernamelb;
@property(nonatomic,strong) UILabel     * PandaCardlb;
@end

NS_ASSUME_NONNULL_END
