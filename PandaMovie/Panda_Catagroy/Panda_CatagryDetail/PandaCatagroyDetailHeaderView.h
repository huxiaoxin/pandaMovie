

#import <UIKit/UIKit.h>
#import "PadaCatagoryweizhiModel.h"
NS_ASSUME_NONNULL_BEGIN
@protocol PandaCatagroyDetailHeaderViewDelegate <NSObject>

-(void)PandaCatagroyDetailHeaderViewBtnClick:(UIButton *)myBtn;

@end
@interface PandaCatagroyDetailHeaderView : UIView
@property(nonatomic,assign) CGFloat PandaDetailHeaderHeight;
@property(nonatomic,weak) id <PandaCatagroyDetailHeaderViewDelegate>delegate;
-(instancetype)initWithFrame:(CGRect)frame ConfigWithModel:(PadaCatagoryweizhiModel *)pandaModel;
@end

NS_ASSUME_NONNULL_END
