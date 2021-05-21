

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PandaMovieModel : NSObject
@property(nonatomic,copy) NSString * pandaMoiveThuburl;
@property(nonatomic,copy) NSString * PandaMoviewName;
@property(nonatomic,copy)  NSString * PandaMoviewengishName;
@property(nonatomic,copy)  NSString * PandaMoviewType;
@property(nonatomic,copy) NSString * PandaMoviewArtiss;
@property(nonatomic,assign) CGFloat PandaMoviewstar_five;
@property(nonatomic,assign) CGFloat PandaMoviewstar_foure;
@property(nonatomic,assign) CGFloat PandaMoviewstar_three;
@property(nonatomic,assign) CGFloat PandaMoviewstar_two;
@property(nonatomic,assign) CGFloat PandaMoviewstar_one;
@property(nonatomic,assign) BOOL PandaMoview_isCollected;
@property(nonatomic,copy) NSArray  *  PandaMoview_listArr;
@property(nonatomic,copy) NSString * PandaMoview_intrduce;
@property(nonatomic,assign) NSInteger PandaMoview_soureNums;
@property(nonatomic,assign) CGFloat PandaMoview_DBNums;
@property(nonatomic,assign) NSInteger PandaMovie_ID;
@property(nonatomic,copy) NSString * PandaMoview_tagOne;
@property(nonatomic,copy) NSString * PandaMoview_tagtwo;
@property(nonatomic,copy) NSString * time;
@property(nonatomic,assign) NSInteger Top_filmType;
@property(nonatomic,assign) NSInteger total_Num;
@property(nonatomic,assign) BOOL iswantWatching;
@property(nonatomic,copy) NSString * watchingNum;
@property(nonatomic,assign) NSInteger shangyinNum;
@end

NS_ASSUME_NONNULL_END
