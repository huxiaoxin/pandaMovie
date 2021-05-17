//
//  AppDelegate+PandaSafe.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/4.
//

#import "AppDelegate+PandaSafe.h"
#import "PandaZoneModel.h"
@implementation AppDelegate (PandaSafe)
+(void)load{
[self PandaZoneModelConfig];
}
+(void)PandaZoneModelConfig{
    NSMutableArray * tempArr = [NSMutableArray array];
    PandaZoneModel * zoneModel = [[PandaZoneModel alloc]init];
    zoneModel.CellHeight =  RealWidth(0);
    zoneModel.title = @"“Ultimately, it is the desire, not the desired, that we love.” ― Nietzsche";
    zoneModel.content = @"娄烨民国三部曲都扣着谍战这个主题，也不知道是不是巧合。开场前还在想，我大概是少数几个03年也在戛纳《紫蝴蝶》首映现场的人。当年确实喜欢不起来《紫蝴蝶》，今非昔比，倒是真的沉醉在了娄式氤氲感里。Saturday Fiction，点其实在“fiction”。舞台剧也好，黑白影像也好，戏中戏也罢，其实都是虚实角力两种运动情态，但情态背后欲望是实体，也是娄烨电影里一切动作原发力。恐怕称之为近几年最美的华语电影也不为过。希望《人的境遇》上映时候，还能碰巧在首映现场。";
    zoneModel.imgArr = @[@"https://img9.doubanio.com/view/photo/l/public/p2513678635.jpg",@"https://img1.doubanio.com/view/photo/l/public/p2512165339.jpg"];
    zoneModel.isZan = NO;
    zoneModel.PandaZoneID = 0;
    [tempArr addObject:zoneModel];
    
    PandaZoneModel * zoneModel1 = [[PandaZoneModel alloc]init];
    zoneModel1.CellHeight =  RealWidth(0);
    zoneModel1.title = @"“Ultimately, it is the desire, not the desired, that we love.” ― Nietzsche“Ultimately, it is the desire, not the desired, that we love.";
    zoneModel1.content = @"娄烨民国三部曲都扣着谍战这个主题，也不知道是不是巧合。开场前还在想，我大概是少数几个03年也在戛纳《紫蝴蝶》首映现场的人。当年确实喜欢不起来《紫蝴蝶》，今非昔比，倒是真的沉醉在了娄式氤氲感里。Saturday Fiction，点其实在“fiction”。舞台剧也好，黑白影像也好，戏中戏也罢，其实都是虚实角力两种运动情态，但情态背后欲望是实体，也是娄烨电影里一切动作原发力。恐怕称之为近几年最美的华语电影也不为过。希望《人的境遇》上映时候，还能碰巧在首映现场。";
    zoneModel1.imgArr = @[@"https://img9.doubanio.com/view/photo/l/public/p2513678635.jpg",@"https://img1.doubanio.com/view/photo/l/public/p2512165339.jpg"];
    zoneModel1.isZan = NO;
    zoneModel1.PandaZoneID = 1;
    [tempArr addObject:zoneModel1];
    
    PandaZoneModel * zoneModel2 = [[PandaZoneModel alloc]init];
    zoneModel2.CellHeight =  RealWidth(0);
    zoneModel2.title = @"“Ultimately, it is the desire, not the desired, that we love.” ― Nietzsche“Ultimately, it is the desire, not the desired, that we love.";
    zoneModel2.content = @"娄烨民国三部曲都扣着谍战这个主题，也不知道是不是巧合。开场前还在想，我大概是少数几个03年也在戛纳《紫蝴蝶》首映现场的人。当年确实喜欢不起来《紫蝴蝶》，今非昔比，倒是真的沉醉在了娄式氤氲感里。Saturday Fiction，点其实在“fiction”。舞台剧也好，黑白影像也好，戏中戏也罢，其实都是虚实角力两种运动情态，但情态背后欲望是实体，也是娄烨电影里一切动作原发力。恐怕称之为近几年最美的华语电影也不为过。希望《人的境遇》上映时候，还能碰巧在首映现场。";
    zoneModel2.imgArr = @[@"https://img9.doubanio.com/view/photo/l/public/p2513678635.jpg",@"https://img1.doubanio.com/view/photo/l/public/p2512165339.jpg"];
    zoneModel2.isZan = NO;
    zoneModel2.PandaZoneID = 2;
    [tempArr addObject:zoneModel2];
    
    BOOL isPanzone = [[NSUserDefaults standardUserDefaults] boolForKey:@"isPanzone"];
    if (isPanzone == NO) {
       BOOL  PandaZoneStatus = [WHC_ModelSqlite inserts:tempArr.copy];
        [[NSUserDefaults standardUserDefaults] setBool:PandaZoneStatus forKey:@"isPanzone"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}
@end
