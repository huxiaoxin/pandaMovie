//
//  PandaZoneModel.h
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/17.
//

#import "PandaBaseModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface PandaZoneModel : PandaBaseModel
@property(nonatomic,assign) CGFloat CellHeight;
@property(nonatomic,copy)  NSString * title;
@property(nonatomic,copy) NSString  * content;
@property(nonatomic,copy) NSArray * imgArr;
@property(nonatomic,assign) NSInteger zanNum;
@property(nonatomic,assign) BOOL isZan;
@property(nonatomic,assign) NSInteger PandaZoneID;

@property(nonatomic,copy) NSString * imgurl;
@property(nonatomic,copy) NSString * username;
@property(nonatomic,copy) NSString * time;

@end

NS_ASSUME_NONNULL_END
