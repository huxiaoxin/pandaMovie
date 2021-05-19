//
//  PandaHomeHeaderView.h
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/4.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol PandaHomeHeaderViewDelegate <NSObject>

-(void)PandaHomeHeaderViewWithBtnClickIndex:(NSInteger)btnIndex;

@end
@interface PandaHomeHeaderView : UIView
@property(nonatomic,assign) CGFloat PandanHeaderHeight;
@property(nonatomic,weak) id <PandaHomeHeaderViewDelegate>delegate;
@property(nonatomic,copy) NSArray * pandaWatchingArr;
@property(nonatomic,copy) NSArray * pandaWatedArr;

@end

NS_ASSUME_NONNULL_END
