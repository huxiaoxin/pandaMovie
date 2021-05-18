//
//  PandaBangdanTableViewCell.h
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/5.
//

#import <UIKit/UIKit.h>
#import "PandaangdanModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface PandaBangdanTableViewCell : UITableViewCell
@property(nonatomic,strong) UIImageView * PandaTopimgView;
@property(nonatomic,strong) UILabel     * PandaNumlb;
@property(nonatomic,strong) PandaangdanModel * pandaModel;
@end

NS_ASSUME_NONNULL_END
