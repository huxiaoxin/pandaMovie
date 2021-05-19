//
//  PandaMsgTableViewCell.h
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/17.
//

#import <UIKit/UIKit.h>
#import "PandaMovieMsgModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface PandaMsgTableViewCell : UITableViewCell
@property(nonatomic,strong) PandaMovieMsgModel * movieModel;
@end

NS_ASSUME_NONNULL_END
