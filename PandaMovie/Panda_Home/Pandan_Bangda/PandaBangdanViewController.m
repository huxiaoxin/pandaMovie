//
//  PandaBangdanViewController.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/5.
//

#import "PandaBangdanViewController.h"
#import "PandaBangdanTableViewCell.h"
#import "PandaangdanModel.h"
#import "NSTimer+KJSolve.h"
@interface PandaBangdanViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong) UITableView * PandaBangdanTableView;
@property(nonatomic,copy) NSArray * PandaDataList;
@property(nonatomic,assign) NSInteger Index;
@end

@implementation PandaBangdanViewController
//- (NSMutableArray *)PandaDataList{
//    if (!_PandaDataList) {
//        _PandaDataList = [NSMutableArray array];
//    }
//    return _PandaDataList;
//}
-(NSMutableArray *)PandaTempArrConfigData{
    NSMutableArray * tempArr = [NSMutableArray array];
    NSMutableArray * subTempArr = [NSMutableArray array];
    NSMutableArray * subTempArr1 = [NSMutableArray array];
    NSMutableArray * subTempArr2 = [NSMutableArray array];
    NSMutableArray * subTempArr3 = [NSMutableArray array];
    NSMutableArray * subTempArr4 = [NSMutableArray array];
    NSMutableArray * subTempArr5 = [NSMutableArray array];
    NSMutableArray * subTempArr6 = [NSMutableArray array];
    NSMutableArray * subTempArr7 = [NSMutableArray array];
    NSMutableArray * subTempArr8 = [NSMutableArray array];
    NSMutableArray * subTempArr9 = [NSMutableArray array];
    NSMutableArray * subTempArr10 = [NSMutableArray array];
    
    [subTempArr addObject:[self padaBangdanConfigWithName:@"悬崖之上" ifno:@"上映19天 9.70亿" zh_money:@"551.21万" pf_rate:@"33.4%" pp_num:@"79450"]];
    [subTempArr addObject:[self padaBangdanConfigWithName:@"扫黑.决战" ifno:@"上映18天 3.53亿" zh_money:@"256.54万" pf_rate:@"15.5%" pp_num:@"64341"]];
    [subTempArr addObject:[self padaBangdanConfigWithName:@"人之怒" ifno:@"上映9天 1.28亿" zh_money:@"209.86万" pf_rate:@"12.6%" pp_num:@"52812"]];
    [subTempArr addObject:[self padaBangdanConfigWithName:@"一百零八" ifno:@"上映4天 1857.7万" zh_money:@"195.21万" pf_rate:@"11.7%" pp_num:@"11855"]];
    [subTempArr addObject:[self padaBangdanConfigWithName:@"指环王:王者无敌" ifno:@"1.11亿" zh_money:@"108.23万" pf_rate:@"6.5%" pp_num:@"17560"]];
    [subTempArr addObject:[self padaBangdanConfigWithName:@"你的婚礼" ifno:@"上映19天 7.82亿" zh_money:@"90.31万" pf_rate:@"5.4%" pp_num:@"26332"]];
    [subTempArr addObject:[self padaBangdanConfigWithName:@"追虎擒龙" ifno:@"上映18天 2.34亿" zh_money:@"60.87万" pf_rate:@"3.6%" pp_num:@"16717"]];
    [subTempArr addObject:[self padaBangdanConfigWithName:@"感动她77次" ifno:@"上映5天 2709.5万" zh_money:@"56.44万" pf_rate:@"3.3%" pp_num:@"28618"]];
    [subTempArr addObject:[self padaBangdanConfigWithName:@"无罪谋杀:科林尼案" ifno:@"上映5天 345.2万" zh_money:@"14.58万" pf_rate:@"0.8%" pp_num:@"6309"]];
    [subTempArr addObject:[self padaBangdanConfigWithName:@"疯狂丑小鸭2靠谱英雄" ifno:@"点映63.2万" zh_money:@"13.11万" pf_rate:@"0.7%" pp_num:@"43"]];
    [subTempArr addObject:[self padaBangdanConfigWithName:@"秘密访客" ifno:@"上映18天 2.14亿" zh_money:@"10.07万" pf_rate:@"0.5%" pp_num:@"4643"]];
    [subTempArr addObject:[self padaBangdanConfigWithName:@"平安中国之守护者" ifno:@"上映61天 5332.5万" zh_money:@"10.00万" pf_rate:@"0.3%" pp_num:@"32"]];
    [subTempArr addObject:[self padaBangdanConfigWithName:@"奇异世界历险记" ifno:@"上映46天 330.2万" zh_money:@"6.15万" pf_rate:@"0.2%" pp_num:@"2098"]];
    [subTempArr addObject:[self padaBangdanConfigWithName:@"哥斯拉大战金刚" ifno:@"上映54天 12.29亿" zh_money:@"4.72万" pf_rate:@"0.2%" pp_num:@"3801"]];
    
    [subTempArr1 addObject:[self padaBangdanConfigWithName:@"悬崖之上" ifno:@"上映19天 9.70亿" zh_money:@"551.90万" pf_rate:@"33.5%" pp_num:@"79451"]];
    [subTempArr1 addObject:[self padaBangdanConfigWithName:@"扫黑.决战" ifno:@"上映18天 3.53亿" zh_money:@"256.61万" pf_rate:@"15.5%" pp_num:@"64341"]];
    [subTempArr1 addObject:[self padaBangdanConfigWithName:@"人之怒" ifno:@"上映9天 1.28亿" zh_money:@"209.92万" pf_rate:@"12.6%" pp_num:@"52812"]];
    [subTempArr1 addObject:[self padaBangdanConfigWithName:@"一百零八" ifno:@"上映4天 1857.7万" zh_money:@"195.35万" pf_rate:@"12.1%" pp_num:@"11855"]];
    [subTempArr1 addObject:[self padaBangdanConfigWithName:@"指环王:王者无敌" ifno:@"1.11亿" zh_money:@"108.13万" pf_rate:@"6.5%" pp_num:@"17560"]];
    [subTempArr1 addObject:[self padaBangdanConfigWithName:@"你的婚礼" ifno:@"上映19天 7.82亿" zh_money:@"90.42万" pf_rate:@"5.4%" pp_num:@"26332"]];
    [subTempArr1 addObject:[self padaBangdanConfigWithName:@"追虎擒龙" ifno:@"上映18天 2.34亿" zh_money:@"60.98万" pf_rate:@"3.6%" pp_num:@"16717"]];
    [subTempArr1 addObject:[self padaBangdanConfigWithName:@"感动她77次" ifno:@"上映5天 2709.5万" zh_money:@"56.45万" pf_rate:@"3.3%" pp_num:@"28618"]];
    [subTempArr1 addObject:[self padaBangdanConfigWithName:@"无罪谋杀:科林尼案" ifno:@"上映5天 345.2万" zh_money:@"15.61万" pf_rate:@"0.8%" pp_num:@"6309"]];
    [subTempArr1 addObject:[self padaBangdanConfigWithName:@"疯狂丑小鸭2靠谱英雄" ifno:@"点映63.2万" zh_money:@"13.11万" pf_rate:@"0.7%" pp_num:@"43"]];
    [subTempArr1 addObject:[self padaBangdanConfigWithName:@"秘密访客" ifno:@"上映18天 2.14亿" zh_money:@"10.07万" pf_rate:@"0.5%" pp_num:@"4643"]];
    [subTempArr1 addObject:[self padaBangdanConfigWithName:@"平安中国之守护者" ifno:@"上映61天 5332.5万" zh_money:@"10.00万" pf_rate:@"0.3%" pp_num:@"32"]];
    [subTempArr1 addObject:[self padaBangdanConfigWithName:@"奇异世界历险记" ifno:@"上映46天 330.2万" zh_money:@"6.15万" pf_rate:@"0.2%" pp_num:@"2098"]];
    [subTempArr1 addObject:[self padaBangdanConfigWithName:@"哥斯拉大战金刚" ifno:@"上映54天 12.29亿" zh_money:@"4.72万" pf_rate:@"0.2%" pp_num:@"3801"]];
    
    
    [subTempArr2 addObject:[self padaBangdanConfigWithName:@"悬崖之上" ifno:@"上映19天 9.70亿" zh_money:@"552.01万" pf_rate:@"33.5%" pp_num:@"79456"]];
    [subTempArr2 addObject:[self padaBangdanConfigWithName:@"扫黑.决战" ifno:@"上映18天 3.53亿" zh_money:@"256.62万" pf_rate:@"15.6%" pp_num:@"64345"]];
    [subTempArr2 addObject:[self padaBangdanConfigWithName:@"人之怒" ifno:@"上映9天 1.28亿" zh_money:@"209.94万" pf_rate:@"12.8%" pp_num:@"52814"]];
    [subTempArr2 addObject:[self padaBangdanConfigWithName:@"一百零八" ifno:@"上映4天 1857.7万" zh_money:@"195.36万" pf_rate:@"12.1%" pp_num:@"11856"]];
    [subTempArr2 addObject:[self padaBangdanConfigWithName:@"指环王:王者无敌" ifno:@"1.11亿" zh_money:@"108.15万" pf_rate:@"6.5%" pp_num:@"17561"]];
    [subTempArr2 addObject:[self padaBangdanConfigWithName:@"你的婚礼" ifno:@"上映19天 7.82亿" zh_money:@"90.43万" pf_rate:@"5.5%" pp_num:@"26334"]];
    [subTempArr2 addObject:[self padaBangdanConfigWithName:@"追虎擒龙" ifno:@"上映18天 2.34亿" zh_money:@"60.99万" pf_rate:@"3.6%" pp_num:@"16718"]];
    [subTempArr2 addObject:[self padaBangdanConfigWithName:@"感动她77次" ifno:@"上映5天 2709.5万" zh_money:@"56.45万" pf_rate:@"3.3%" pp_num:@"28618"]];
    [subTempArr2 addObject:[self padaBangdanConfigWithName:@"无罪谋杀:科林尼案" ifno:@"上映5天 345.2万" zh_money:@"15.62万" pf_rate:@"0.8%" pp_num:@"6310"]];
    [subTempArr2 addObject:[self padaBangdanConfigWithName:@"疯狂丑小鸭2靠谱英雄" ifno:@"点映63.2万" zh_money:@"13.12万" pf_rate:@"0.7%" pp_num:@"44"]];
    [subTempArr2 addObject:[self padaBangdanConfigWithName:@"秘密访客" ifno:@"上映18天 2.14亿" zh_money:@"10.08万" pf_rate:@"0.5%" pp_num:@"4644"]];
    [subTempArr2 addObject:[self padaBangdanConfigWithName:@"平安中国之守护者" ifno:@"上映61天 5332.5万" zh_money:@"10.00万" pf_rate:@"0.3%" pp_num:@"32"]];
    [subTempArr2 addObject:[self padaBangdanConfigWithName:@"奇异世界历险记" ifno:@"上映46天 330.2万" zh_money:@"6.15万" pf_rate:@"0.2%" pp_num:@"2098"]];
    [subTempArr2 addObject:[self padaBangdanConfigWithName:@"哥斯拉大战金刚" ifno:@"上映54天 12.29亿" zh_money:@"4.72万" pf_rate:@"0.2%" pp_num:@"3801"]];

    
    [subTempArr3 addObject:[self padaBangdanConfigWithName:@"悬崖之上" ifno:@"上映19天 9.70亿" zh_money:@"552.02万" pf_rate:@"33.5%" pp_num:@"79459"]];
    [subTempArr3 addObject:[self padaBangdanConfigWithName:@"扫黑.决战" ifno:@"上映18天 3.53亿" zh_money:@"256.63万" pf_rate:@"15.7%" pp_num:@"64348"]];
    [subTempArr3 addObject:[self padaBangdanConfigWithName:@"人之怒" ifno:@"上映9天 1.28亿" zh_money:@"209.95万" pf_rate:@"12.9%" pp_num:@"52815"]];
    [subTempArr3 addObject:[self padaBangdanConfigWithName:@"一百零八" ifno:@"上映4天 1857.7万" zh_money:@"195.37万" pf_rate:@"12.2%" pp_num:@"11857"]];
    [subTempArr3 addObject:[self padaBangdanConfigWithName:@"指环王:王者无敌" ifno:@"1.11亿" zh_money:@"108.15万" pf_rate:@"6.6%" pp_num:@"17562"]];
    [subTempArr3 addObject:[self padaBangdanConfigWithName:@"你的婚礼" ifno:@"上映19天 7.82亿" zh_money:@"90.51万" pf_rate:@"5.6%" pp_num:@"26336"]];
    [subTempArr3 addObject:[self padaBangdanConfigWithName:@"追虎擒龙" ifno:@"上映18天 2.34亿" zh_money:@"61.01万" pf_rate:@"3.6%" pp_num:@"16720"]];
    [subTempArr3 addObject:[self padaBangdanConfigWithName:@"感动她77次" ifno:@"上映5天 2709.5万" zh_money:@"56.47万" pf_rate:@"3.3%" pp_num:@"28619"]];
    [subTempArr3 addObject:[self padaBangdanConfigWithName:@"无罪谋杀:科林尼案" ifno:@"上映5天 345.2万" zh_money:@"15.63万" pf_rate:@"0.8%" pp_num:@"6311"]];
    [subTempArr3 addObject:[self padaBangdanConfigWithName:@"疯狂丑小鸭2靠谱英雄" ifno:@"点映63.2万" zh_money:@"13.13万" pf_rate:@"0.8%" pp_num:@"44"]];
    [subTempArr3 addObject:[self padaBangdanConfigWithName:@"秘密访客" ifno:@"上映18天 2.14亿" zh_money:@"10.09万" pf_rate:@"0.5%" pp_num:@"4645"]];
    [subTempArr3 addObject:[self padaBangdanConfigWithName:@"平安中国之守护者" ifno:@"上映61天 5332.5万" zh_money:@"10.00万" pf_rate:@"0.3%" pp_num:@"32"]];
    [subTempArr3 addObject:[self padaBangdanConfigWithName:@"奇异世界历险记" ifno:@"上映46天 330.2万" zh_money:@"6.15万" pf_rate:@"0.2%" pp_num:@"2098"]];
    [subTempArr3 addObject:[self padaBangdanConfigWithName:@"哥斯拉大战金刚" ifno:@"上映54天 12.29亿" zh_money:@"4.72万" pf_rate:@"0.2%" pp_num:@"3801"]];
    
    
    [subTempArr4 addObject:[self padaBangdanConfigWithName:@"悬崖之上" ifno:@"上映19天 9.70亿" zh_money:@"552.03万" pf_rate:@"33.5%" pp_num:@"79461"]];
    [subTempArr4 addObject:[self padaBangdanConfigWithName:@"扫黑.决战" ifno:@"上映18天 3.53亿" zh_money:@"256.64万" pf_rate:@"15.8%" pp_num:@"64351"]];
    [subTempArr4 addObject:[self padaBangdanConfigWithName:@"人之怒" ifno:@"上映9天 1.29亿" zh_money:@"209.99万" pf_rate:@"12.9%" pp_num:@"52818"]];
    [subTempArr4 addObject:[self padaBangdanConfigWithName:@"一百零八" ifno:@"上映4天 1857.7万" zh_money:@"195.38万" pf_rate:@"12.3%" pp_num:@"11856"]];
    [subTempArr4 addObject:[self padaBangdanConfigWithName:@"指环王:王者无敌" ifno:@"1.11亿" zh_money:@"108.16万" pf_rate:@"6.6%" pp_num:@"1756"]];
    [subTempArr4 addObject:[self padaBangdanConfigWithName:@"你的婚礼" ifno:@"上映19天 7.82亿" zh_money:@"90.52万" pf_rate:@"5.6%" pp_num:@"26338"]];
    [subTempArr4 addObject:[self padaBangdanConfigWithName:@"追虎擒龙" ifno:@"上映18天 2.34亿" zh_money:@"61.02万" pf_rate:@"3.6%" pp_num:@"16721"]];
    [subTempArr4 addObject:[self padaBangdanConfigWithName:@"感动她77次" ifno:@"上映5天 2709.5万" zh_money:@"56.48万" pf_rate:@"3.3%" pp_num:@"28620"]];
    [subTempArr4 addObject:[self padaBangdanConfigWithName:@"无罪谋杀:科林尼案" ifno:@"上映5天 345.2万" zh_money:@"15.63万" pf_rate:@"0.8%" pp_num:@"6311"]];
    [subTempArr4 addObject:[self padaBangdanConfigWithName:@"疯狂丑小鸭2靠谱英雄" ifno:@"点映63.2万" zh_money:@"13.13万" pf_rate:@"0.8%" pp_num:@"44"]];
    [subTempArr4 addObject:[self padaBangdanConfigWithName:@"秘密访客" ifno:@"上映18天 2.14亿" zh_money:@"10.09万" pf_rate:@"0.5%" pp_num:@"4645"]];
    [subTempArr4 addObject:[self padaBangdanConfigWithName:@"平安中国之守护者" ifno:@"上映61天 5332.5万" zh_money:@"10.00万" pf_rate:@"0.3%" pp_num:@"32"]];
    [subTempArr4 addObject:[self padaBangdanConfigWithName:@"奇异世界历险记" ifno:@"上映46天 330.2万" zh_money:@"6.15万" pf_rate:@"0.2%" pp_num:@"2098"]];
    [subTempArr4 addObject:[self padaBangdanConfigWithName:@"哥斯拉大战金刚" ifno:@"上映54天 12.29亿" zh_money:@"4.72万" pf_rate:@"0.2%" pp_num:@"3801"]];
    
    [subTempArr5 addObject:[self padaBangdanConfigWithName:@"悬崖之上" ifno:@"上映19天 9.70亿" zh_money:@"552.04万" pf_rate:@"33.5%" pp_num:@"79463"]];
    [subTempArr5 addObject:[self padaBangdanConfigWithName:@"扫黑.决战" ifno:@"上映18天 3.53亿" zh_money:@"256.66万" pf_rate:@"15.8%" pp_num:@"64354"]];
    [subTempArr5 addObject:[self padaBangdanConfigWithName:@"人之怒" ifno:@"上映9天 1.29亿" zh_money:@"210.01万" pf_rate:@"12.9%" pp_num:@"52821"]];
    [subTempArr5 addObject:[self padaBangdanConfigWithName:@"一百零八" ifno:@"上映4天 1857.7万" zh_money:@"195.39万" pf_rate:@"12.3%" pp_num:@"11859"]];
    [subTempArr5 addObject:[self padaBangdanConfigWithName:@"指环王:王者无敌" ifno:@"1.11亿" zh_money:@"108.17万" pf_rate:@"6.6%" pp_num:@"1759"]];
    [subTempArr5 addObject:[self padaBangdanConfigWithName:@"你的婚礼" ifno:@"上映19天 7.82亿" zh_money:@"90.53万" pf_rate:@"5.7%" pp_num:@"26339"]];
    [subTempArr5 addObject:[self padaBangdanConfigWithName:@"追虎擒龙" ifno:@"上映18天 2.34亿" zh_money:@"61.03万" pf_rate:@"3.7%" pp_num:@"16725"]];
    [subTempArr5 addObject:[self padaBangdanConfigWithName:@"感动她77次" ifno:@"上映5天 2709.5万" zh_money:@"56.49万" pf_rate:@"3.4%" pp_num:@"28621"]];
    [subTempArr5 addObject:[self padaBangdanConfigWithName:@"无罪谋杀:科林尼案" ifno:@"上映5天 345.2万" zh_money:@"15.63万" pf_rate:@"0.8%" pp_num:@"6311"]];
    [subTempArr5 addObject:[self padaBangdanConfigWithName:@"疯狂丑小鸭2靠谱英雄" ifno:@"点映63.2万" zh_money:@"13.14万" pf_rate:@"0.9%" pp_num:@"44"]];
    [subTempArr5 addObject:[self padaBangdanConfigWithName:@"秘密访客" ifno:@"上映18天 2.14亿" zh_money:@"10.09万" pf_rate:@"0.5%" pp_num:@"4645"]];
    [subTempArr5 addObject:[self padaBangdanConfigWithName:@"平安中国之守护者" ifno:@"上映61天 5332.5万" zh_money:@"10.00万" pf_rate:@"0.3%" pp_num:@"32"]];
    [subTempArr5 addObject:[self padaBangdanConfigWithName:@"奇异世界历险记" ifno:@"上映46天 330.2万" zh_money:@"6.15万" pf_rate:@"0.2%" pp_num:@"2098"]];
    [subTempArr5 addObject:[self padaBangdanConfigWithName:@"哥斯拉大战金刚" ifno:@"上映54天 12.29亿" zh_money:@"4.72万" pf_rate:@"0.2%" pp_num:@"3801"]];
    
    
    [subTempArr6 addObject:[self padaBangdanConfigWithName:@"悬崖之上" ifno:@"上映19天 9.70亿" zh_money:@"552.05万" pf_rate:@"33.6%" pp_num:@"79466"]];
    [subTempArr6 addObject:[self padaBangdanConfigWithName:@"扫黑.决战" ifno:@"上映18天 3.53亿" zh_money:@"256.67万" pf_rate:@"15.89%" pp_num:@"64356"]];
    [subTempArr6 addObject:[self padaBangdanConfigWithName:@"人之怒" ifno:@"上映9天 1.29亿" zh_money:@"210.02万" pf_rate:@"13.1%" pp_num:@"52824"]];
    [subTempArr6 addObject:[self padaBangdanConfigWithName:@"一百零八" ifno:@"上映4天 1857.7万" zh_money:@"195.41万" pf_rate:@"12.4%" pp_num:@"11861"]];
    [subTempArr6 addObject:[self padaBangdanConfigWithName:@"指环王:王者无敌" ifno:@"1.11亿" zh_money:@"108.18万" pf_rate:@"6.7%" pp_num:@"1761"]];
    [subTempArr6 addObject:[self padaBangdanConfigWithName:@"你的婚礼" ifno:@"上映19天 7.82亿" zh_money:@"90.54万" pf_rate:@"5.8%" pp_num:@"26341"]];
    [subTempArr6 addObject:[self padaBangdanConfigWithName:@"追虎擒龙" ifno:@"上映18天 2.34亿" zh_money:@"61.04万" pf_rate:@"3.8%" pp_num:@"16726"]];
    [subTempArr6 addObject:[self padaBangdanConfigWithName:@"感动她77次" ifno:@"上映5天 2709.5万" zh_money:@"56.51万" pf_rate:@"3.5%" pp_num:@"28622"]];
    [subTempArr6 addObject:[self padaBangdanConfigWithName:@"无罪谋杀:科林尼案" ifno:@"上映5天 345.2万" zh_money:@"15.64万" pf_rate:@"0.8%" pp_num:@"6312"]];
    [subTempArr6 addObject:[self padaBangdanConfigWithName:@"疯狂丑小鸭2靠谱英雄" ifno:@"点映63.2万" zh_money:@"13.14万" pf_rate:@"0.9%" pp_num:@"44"]];
    [subTempArr6 addObject:[self padaBangdanConfigWithName:@"秘密访客" ifno:@"上映18天 2.14亿" zh_money:@"10.09万" pf_rate:@"0.5%" pp_num:@"4645"]];
    [subTempArr6 addObject:[self padaBangdanConfigWithName:@"平安中国之守护者" ifno:@"上映61天 5332.5万" zh_money:@"10.00万" pf_rate:@"0.3%" pp_num:@"32"]];
    [subTempArr6 addObject:[self padaBangdanConfigWithName:@"奇异世界历险记" ifno:@"上映46天 330.2万" zh_money:@"6.15万" pf_rate:@"0.2%" pp_num:@"2098"]];
    [subTempArr6 addObject:[self padaBangdanConfigWithName:@"哥斯拉大战金刚" ifno:@"上映54天 12.29亿" zh_money:@"4.71万" pf_rate:@"0.2%" pp_num:@"3802"]];
    
    
    [subTempArr7 addObject:[self padaBangdanConfigWithName:@"悬崖之上" ifno:@"上映19天 9.70亿" zh_money:@"552.06万" pf_rate:@"33.7%" pp_num:@"79469"]];
    [subTempArr7 addObject:[self padaBangdanConfigWithName:@"扫黑.决战" ifno:@"上映18天 3.53亿" zh_money:@"256.68万" pf_rate:@"15.91%" pp_num:@"64359"]];
    [subTempArr7 addObject:[self padaBangdanConfigWithName:@"人之怒" ifno:@"上映9天 1.29亿" zh_money:@"210.03万" pf_rate:@"13.2%" pp_num:@"52825"]];
    [subTempArr7 addObject:[self padaBangdanConfigWithName:@"一百零八" ifno:@"上映4天 1857.7万" zh_money:@"195.42万" pf_rate:@"12.5%" pp_num:@"11862"]];
    [subTempArr7 addObject:[self padaBangdanConfigWithName:@"指环王:王者无敌" ifno:@"1.11亿" zh_money:@"108.19万" pf_rate:@"6.9%" pp_num:@"1762"]];
    [subTempArr7 addObject:[self padaBangdanConfigWithName:@"你的婚礼" ifno:@"上映19天 7.82亿" zh_money:@"90.55万" pf_rate:@"5.9%" pp_num:@"26342"]];
    [subTempArr7 addObject:[self padaBangdanConfigWithName:@"追虎擒龙" ifno:@"上映18天 2.34亿" zh_money:@"61.05万" pf_rate:@"3.9%" pp_num:@"16727"]];
    [subTempArr7 addObject:[self padaBangdanConfigWithName:@"感动她77次" ifno:@"上映5天 2709.5万" zh_money:@"56.52万" pf_rate:@"3.8%" pp_num:@"28623"]];
    [subTempArr7 addObject:[self padaBangdanConfigWithName:@"无罪谋杀:科林尼案" ifno:@"上映5天 345.2万" zh_money:@"15.66万" pf_rate:@"0.9%" pp_num:@"6313"]];
    [subTempArr7 addObject:[self padaBangdanConfigWithName:@"疯狂丑小鸭2靠谱英雄" ifno:@"点映63.2万" zh_money:@"13.15万" pf_rate:@"0.9%" pp_num:@"46"]];
    [subTempArr7 addObject:[self padaBangdanConfigWithName:@"秘密访客" ifno:@"上映18天 2.14亿" zh_money:@"10.10万" pf_rate:@"0.5%" pp_num:@"4641"]];
    [subTempArr7 addObject:[self padaBangdanConfigWithName:@"平安中国之守护者" ifno:@"上映61天 5332.5万" zh_money:@"10.00万" pf_rate:@"0.3%" pp_num:@"32"]];
    [subTempArr7 addObject:[self padaBangdanConfigWithName:@"奇异世界历险记" ifno:@"上映46天 330.2万" zh_money:@"6.15万" pf_rate:@"0.2%" pp_num:@"2098"]];
    [subTempArr7 addObject:[self padaBangdanConfigWithName:@"哥斯拉大战金刚" ifno:@"上映54天 12.29亿" zh_money:@"4.71万" pf_rate:@"0.2%" pp_num:@"3802"]];
    
    
    [subTempArr8 addObject:[self padaBangdanConfigWithName:@"悬崖之上" ifno:@"上映19天 9.70亿" zh_money:@"552.07万" pf_rate:@"33.8%" pp_num:@"79471"]];
    [subTempArr8 addObject:[self padaBangdanConfigWithName:@"扫黑.决战" ifno:@"上映18天 3.53亿" zh_money:@"256.69万" pf_rate:@"16.12%" pp_num:@"64362"]];
    [subTempArr8 addObject:[self padaBangdanConfigWithName:@"人之怒" ifno:@"上映9天 1.29亿" zh_money:@"210.04万" pf_rate:@"13.3%" pp_num:@"52854"]];
    [subTempArr8 addObject:[self padaBangdanConfigWithName:@"一百零八" ifno:@"上映4天 1857.7万" zh_money:@"195.44万" pf_rate:@"12.5%" pp_num:@"11865"]];
    [subTempArr8 addObject:[self padaBangdanConfigWithName:@"指环王:王者无敌" ifno:@"1.11亿" zh_money:@"108.20万" pf_rate:@"7.1%" pp_num:@"1764"]];
    [subTempArr8 addObject:[self padaBangdanConfigWithName:@"你的婚礼" ifno:@"上映19天 7.82亿" zh_money:@"90.56万" pf_rate:@"5.9%" pp_num:@"26343"]];
    [subTempArr8 addObject:[self padaBangdanConfigWithName:@"追虎擒龙" ifno:@"上映18天 2.34亿" zh_money:@"61.06万" pf_rate:@"4.1%" pp_num:@"16728"]];
    [subTempArr8 addObject:[self padaBangdanConfigWithName:@"感动她77次" ifno:@"上映5天 2709.5万" zh_money:@"56.54万" pf_rate:@"3.9%" pp_num:@"28624"]];
    [subTempArr8 addObject:[self padaBangdanConfigWithName:@"无罪谋杀:科林尼案" ifno:@"上映5天 345.2万" zh_money:@"15.67万" pf_rate:@"0.9%" pp_num:@"6315"]];
    [subTempArr8 addObject:[self padaBangdanConfigWithName:@"疯狂丑小鸭2靠谱英雄" ifno:@"点映63.2万" zh_money:@"13.18万" pf_rate:@"0.9%" pp_num:@"48"]];
    [subTempArr8 addObject:[self padaBangdanConfigWithName:@"秘密访客" ifno:@"上映18天 2.14亿" zh_money:@"10.10万" pf_rate:@"0.5%" pp_num:@"4641"]];
    [subTempArr8 addObject:[self padaBangdanConfigWithName:@"平安中国之守护者" ifno:@"上映61天 5332.5万" zh_money:@"10.00万" pf_rate:@"0.3%" pp_num:@"32"]];
    [subTempArr8 addObject:[self padaBangdanConfigWithName:@"奇异世界历险记" ifno:@"上映46天 330.2万" zh_money:@"6.15万" pf_rate:@"0.2%" pp_num:@"2098"]];
    [subTempArr8 addObject:[self padaBangdanConfigWithName:@"哥斯拉大战金刚" ifno:@"上映54天 12.29亿" zh_money:@"4.71万" pf_rate:@"0.2%" pp_num:@"3802"]];
    
    
    [subTempArr9 addObject:[self padaBangdanConfigWithName:@"悬崖之上" ifno:@"上映19天 9.70亿" zh_money:@"552.08万" pf_rate:@"33.9%" pp_num:@"79472"]];
    [subTempArr9 addObject:[self padaBangdanConfigWithName:@"扫黑.决战" ifno:@"上映18天 3.53亿" zh_money:@"256.71万" pf_rate:@"16.14%" pp_num:@"64364"]];
    [subTempArr9 addObject:[self padaBangdanConfigWithName:@"人之怒" ifno:@"上映9天 1.29亿" zh_money:@"210.15万" pf_rate:@"13.4%" pp_num:@"52856"]];
    [subTempArr9 addObject:[self padaBangdanConfigWithName:@"一百零八" ifno:@"上映4天 1857.7万" zh_money:@"195.47万" pf_rate:@"12.7%" pp_num:@"11868"]];
    [subTempArr9 addObject:[self padaBangdanConfigWithName:@"指环王:王者无敌" ifno:@"1.11亿" zh_money:@"108.20万" pf_rate:@"7.2%" pp_num:@"1766"]];
    [subTempArr9 addObject:[self padaBangdanConfigWithName:@"你的婚礼" ifno:@"上映19天 7.82亿" zh_money:@"90.56万" pf_rate:@"6.1%" pp_num:@"26345"]];
    [subTempArr9 addObject:[self padaBangdanConfigWithName:@"追虎擒龙" ifno:@"上映18天 2.34亿" zh_money:@"61.06万" pf_rate:@"4.2%" pp_num:@"16729"]];
    [subTempArr9 addObject:[self padaBangdanConfigWithName:@"感动她77次" ifno:@"上映5天 2709.5万" zh_money:@"56.54万" pf_rate:@"3.9%" pp_num:@"28624"]];
    [subTempArr9 addObject:[self padaBangdanConfigWithName:@"无罪谋杀:科林尼案" ifno:@"上映5天 345.2万" zh_money:@"15.67万" pf_rate:@"0.9%" pp_num:@"6315"]];
    [subTempArr9 addObject:[self padaBangdanConfigWithName:@"疯狂丑小鸭2靠谱英雄" ifno:@"点映63.2万" zh_money:@"13.18万" pf_rate:@"0.9%" pp_num:@"48"]];
    [subTempArr9 addObject:[self padaBangdanConfigWithName:@"秘密访客" ifno:@"上映18天 2.14亿" zh_money:@"10.10万" pf_rate:@"0.5%" pp_num:@"4641"]];
    [subTempArr9 addObject:[self padaBangdanConfigWithName:@"平安中国之守护者" ifno:@"上映61天 5332.5万" zh_money:@"10.00万" pf_rate:@"0.3%" pp_num:@"32"]];
    [subTempArr9 addObject:[self padaBangdanConfigWithName:@"奇异世界历险记" ifno:@"上映46天 330.2万" zh_money:@"6.15万" pf_rate:@"0.2%" pp_num:@"2098"]];
    [subTempArr9 addObject:[self padaBangdanConfigWithName:@"哥斯拉大战金刚" ifno:@"上映54天 12.29亿" zh_money:@"4.71万" pf_rate:@"0.2%" pp_num:@"3802"]];
    
    
    [subTempArr10 addObject:[self padaBangdanConfigWithName:@"悬崖之上" ifno:@"上映19天 9.70亿" zh_money:@"552.08万" pf_rate:@"33.9%" pp_num:@"79472"]];
    [subTempArr10 addObject:[self padaBangdanConfigWithName:@"扫黑.决战" ifno:@"上映18天 3.53亿" zh_money:@"256.71万" pf_rate:@"16.14%" pp_num:@"64364"]];
    [subTempArr10 addObject:[self padaBangdanConfigWithName:@"人之怒" ifno:@"上映9天 1.29亿" zh_money:@"210.15万" pf_rate:@"13.4%" pp_num:@"52856"]];
    [subTempArr10 addObject:[self padaBangdanConfigWithName:@"一百零八" ifno:@"上映4天 1857.7万" zh_money:@"195.47万" pf_rate:@"12.7%" pp_num:@"11868"]];
    [subTempArr10 addObject:[self padaBangdanConfigWithName:@"指环王:王者无敌" ifno:@"1.11亿" zh_money:@"108.20万" pf_rate:@"7.2%" pp_num:@"1766"]];
    [subTempArr10 addObject:[self padaBangdanConfigWithName:@"你的婚礼" ifno:@"上映19天 7.82亿" zh_money:@"90.56万" pf_rate:@"6.1%" pp_num:@"26345"]];
    [subTempArr10 addObject:[self padaBangdanConfigWithName:@"追虎擒龙" ifno:@"上映18天 2.34亿" zh_money:@"61.06万" pf_rate:@"4.2%" pp_num:@"16729"]];
    [subTempArr10 addObject:[self padaBangdanConfigWithName:@"感动她77次" ifno:@"上映5天 2709.5万" zh_money:@"56.54万" pf_rate:@"3.9%" pp_num:@"28624"]];
    [subTempArr10 addObject:[self padaBangdanConfigWithName:@"无罪谋杀:科林尼案" ifno:@"上映5天 345.2万" zh_money:@"15.67万" pf_rate:@"0.9%" pp_num:@"6315"]];
    [subTempArr10 addObject:[self padaBangdanConfigWithName:@"疯狂丑小鸭2靠谱英雄" ifno:@"点映63.2万" zh_money:@"13.18万" pf_rate:@"0.9%" pp_num:@"48"]];
    [subTempArr10 addObject:[self padaBangdanConfigWithName:@"秘密访客" ifno:@"上映18天 2.14亿" zh_money:@"10.10万" pf_rate:@"0.5%" pp_num:@"4641"]];
    [subTempArr10 addObject:[self padaBangdanConfigWithName:@"平安中国之守护者" ifno:@"上映61天 5332.5万" zh_money:@"10.00万" pf_rate:@"0.3%" pp_num:@"32"]];
    [subTempArr10 addObject:[self padaBangdanConfigWithName:@"奇异世界历险记" ifno:@"上映46天 330.2万" zh_money:@"6.15万" pf_rate:@"0.2%" pp_num:@"2098"]];
    [subTempArr10 addObject:[self padaBangdanConfigWithName:@"哥斯拉大战金刚" ifno:@"上映54天 12.29亿" zh_money:@"4.71万" pf_rate:@"0.2%" pp_num:@"3802"]];

    
    [tempArr addObject:subTempArr];
    [tempArr addObject:subTempArr1];
    [tempArr addObject:subTempArr2];
    [tempArr addObject:subTempArr3];
    [tempArr addObject:subTempArr4];
    [tempArr addObject:subTempArr5];
    [tempArr addObject:subTempArr6];
    [tempArr addObject:subTempArr7];
    [tempArr addObject:subTempArr8];
    [tempArr addObject:subTempArr9];
    [tempArr addObject:subTempArr10];
    return tempArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navBarAlpha = 0;
    self.Index =0;
    self.gk_navTitle = @"热门榜单";
    [self.view addSubview:self.PandaBangdanTableView];
    UIImageView * PandaHeaderImgView =[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(150)+GK_SAFEAREA_TOP)];
    PandaHeaderImgView.image = [UIImage imageNamed:@"ttttt"];
    [_PandaBangdanTableView addSubview:PandaHeaderImgView];
    UIView * Taleheader = [[UIView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(150+30))];
    Taleheader.backgroundColor = [UIColor clearColor];
    _PandaBangdanTableView.tableHeaderView = Taleheader;
    
    
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self RealodaTimerWithindexAfter1];
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            MJWeakSelf;
            [NSTimer kj_scheduledTimerWithTimeInterval:1.5 Repeats:YES Block:^(NSTimer * _Nonnull timer) {
                [weakSelf RealodaTimerWithindex:0];
            }];
        });
        
    });
    


}
-(void)RealodaTimerWithindexAfter1{
    [LCProgressHUD hide];
    NSMutableArray * tempArrr = [self PandaTempArrConfigData];
    if (self.Index == tempArrr.count-1) {
        self.Index = 0;
    }
    self.Index +=1;
    NSArray * subTempArr = [tempArrr objectAtIndex:self.Index];
    self.PandaDataList = subTempArr.copy;
    [self.PandaBangdanTableView reloadData];
}
-(void)RealodaTimerWithindex:(NSInteger)index{
    [LCProgressHUD hide];
    NSMutableArray * tempArrr = [self PandaTempArrConfigData];
    if (self.Index == tempArrr.count-1) {
        self.Index = 0;
    }
    self.Index +=1;
    NSArray * subTempArr = [tempArrr objectAtIndex:self.Index];
    PandaangdanModel * model = subTempArr.firstObject;
    self.PandaDataList = subTempArr.copy;
    [self.PandaBangdanTableView reloadData];
}
- (UITableView *)PandaBangdanTableView{
    if (!_PandaBangdanTableView) {
        _PandaBangdanTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_SAFEAREA_BTM) style:UITableViewStylePlain];
        _PandaBangdanTableView.delegate = self;
        _PandaBangdanTableView.dataSource = self;
        _PandaBangdanTableView.showsVerticalScrollIndicator = NO;
        _PandaBangdanTableView.showsHorizontalScrollIndicator = NO;
        _PandaBangdanTableView.separatorStyle = UITableViewCellSelectionStyleNone;
        _PandaBangdanTableView.backgroundColor  = [UIColor colorWithHexString:@"#2D2259"];

    }
    return _PandaBangdanTableView;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PandaDataList.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * PandaBangIdentifer = @"PandaBangdanTableViewCell";
    PandaBangdanTableViewCell * pandanCell  = [tableView dequeueReusableCellWithIdentifier:PandaBangIdentifer];
    if (pandanCell == nil) {
        pandanCell = [[PandaBangdanTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:PandaBangIdentifer];
    }
    if (indexPath.row%2 == 0) {
        pandanCell.backgroundColor = [UIColor colorWithHexString:@"353443"];
    }else{
        pandanCell.backgroundColor = [UIColor colorWithHexString:@"2B2934"];
    }
    if (indexPath.row == 0) {
        pandanCell.PandaNumlb.text =@"";
        pandanCell.PandaTopimgView.hidden = NO;
        pandanCell.PandaTopimgView.image = [UIImage imageNamed:@"guanjun"];
    }else if (indexPath.row == 1){
        pandanCell.PandaNumlb.text =@"";
        pandanCell.PandaTopimgView.image = [UIImage imageNamed:@"jijun"];

        pandanCell.PandaTopimgView.hidden = NO;
    }else if (indexPath.row == 2){
        pandanCell.PandaNumlb.text =@"";
        pandanCell.PandaTopimgView.image = [UIImage imageNamed:@"yajun"];

        pandanCell.PandaTopimgView.hidden = NO;
    }else{
        pandanCell.PandaNumlb.text = [NSString stringWithFormat:@"%ld",indexPath.row+1];
        pandanCell.PandaTopimgView.hidden = YES;
    }
    pandanCell.pandaModel = self.PandaDataList[indexPath.row];

    return pandanCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(60);
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return RealWidth(40);
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView * myView = [UIView new];
    myView.backgroundColor = [UIColor clearColor];
    
    UIView * subView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(40))];
    subView.backgroundColor = [UIColor colorWithHexString:@"#2B2934"];
    [subView acs_radiusWithRadius:RealWidth(15) corner:UIRectCornerTopLeft |UIRectCornerTopRight];
    [myView addSubview:subView];
    
    UILabel *  PandaFirstlb = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH/4, RealWidth(40))];
    PandaFirstlb.textAlignment = NSTextAlignmentCenter;
    PandaFirstlb.textColor = [UIColor colorWithHexString:@"9F9FA5"];
    PandaFirstlb.text =@"影片";
    PandaFirstlb.font = [UIFont systemFontOfSize:12];
    [subView addSubview:PandaFirstlb];
    
    
    UILabel *  PandaSecondlb = [[UILabel alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH/4, 0, GK_SCREEN_WIDTH/4, RealWidth(40))];
    PandaSecondlb.textAlignment = NSTextAlignmentCenter;
    PandaSecondlb.textColor = [UIColor colorWithHexString:@"9F9FA5"];
    PandaSecondlb.text =@"综合票房";
    PandaSecondlb.font = [UIFont systemFontOfSize:12];

    [subView addSubview:PandaSecondlb];
    
    UILabel *  PandaThreelb = [[UILabel alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH/4*2, 0, GK_SCREEN_WIDTH/4, RealWidth(40))];
    PandaThreelb.textAlignment = NSTextAlignmentCenter;
    PandaThreelb.textColor = [UIColor colorWithHexString:@"9F9FA5"];
    PandaThreelb.text =@"票房占比";
    PandaThreelb.font = [UIFont systemFontOfSize:12];

    [subView addSubview:PandaThreelb];
    
    
    UILabel *  PandaFourelb = [[UILabel alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH/4*3, 0, GK_SCREEN_WIDTH/4, RealWidth(40))];
    PandaFourelb.textAlignment = NSTextAlignmentCenter;
    PandaFourelb.textColor = [UIColor colorWithHexString:@"9F9FA5"];
    PandaFourelb.text =@"拍片场次";
    PandaFourelb.font = [UIFont systemFontOfSize:12];
    [subView addSubview:PandaFourelb];
    return myView;
}
-(void)PandaBangdanTableViewHeaderClicks{
    MJWeakSelf;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [weakSelf.PandaBangdanTableView.mj_header endRefreshing];
    });
    //#2B2934
    //353443
}

-(PandaangdanModel *)padaBangdanConfigWithName:(NSString *)name ifno:(NSString *)infoText zh_money:(NSString *)zh_moneyText pf_rate:(NSString *)pf_rateText pp_num:(NSString *)pp_numText{
    PandaangdanModel * pandaitem = [[PandaangdanModel alloc]init];
    pandaitem.name = name;
    pandaitem.info = infoText;
    pandaitem.zh_money =  zh_moneyText;
    pandaitem.pf_rate = pf_rateText;
    pandaitem.pp_num = pp_numText;
    return pandaitem;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
