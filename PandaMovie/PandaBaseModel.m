//
//  PandaBaseModel.m
//  PandaMovie
//
//  Created by codehzx on 2021/5/5.
//

#import "PandaBaseModel.h"

@implementation PandaBaseModel
+(instancetype)BaseinitWithDic:(NSDictionary *)Dic;
{
    return [[self alloc]initWithDictionaryed:Dic];
}
-(instancetype)initWithDictionaryed:(NSDictionary *)dict
{
    if (self =[super init]) {
    [self setValuesForKeysWithDictionary:dict];
    
    }
    return self;
}
-(void)setValue:(id)value forUndefinedKey:(NSString *)key
{
   
}

@end
