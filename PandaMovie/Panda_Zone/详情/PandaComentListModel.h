//
//  PandaComentListModel.h
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/17.
//

#import "PandaBaseModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface PandaComentListModel : PandaBaseModel
@property(nonatomic,copy) NSString * imgurl;
@property(nonatomic,copy) NSString * name;
@property(nonatomic,copy) NSString * time;
@property(nonatomic,copy) NSString * content;
@property(nonatomic,assign) NSInteger ZoneID;
@property(nonatomic,assign) NSInteger ComentID;
@property(nonatomic,assign) CGFloat CellHeight;
@end

NS_ASSUME_NONNULL_END
