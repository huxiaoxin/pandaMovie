//
//  PandaHomeNavView.h
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/4.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol PandaHomeNavViewDelegate <NSObject>

-(void)PandaHomeNavViewWithScanAction;

@end
@interface PandaHomeNavView : UIView
@property(nonatomic,weak) id <PandaHomeNavViewDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
