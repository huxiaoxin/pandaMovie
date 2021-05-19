//
//  PandaKefuTableViewCell.h
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/5.
//

#import <UIKit/UIKit.h>
#import "FilmChatDetailMoel.h"
#import "PandaMsgDetailModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface PandaKefuTableViewCell : UITableViewCell
@property(nonatomic,strong) FilmChatDetailMoel * pdModell;
@property(nonatomic,strong) PandaMsgDetailModel * pandaModel;
@end

NS_ASSUME_NONNULL_END
