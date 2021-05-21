//
//  AppDelegate+PandaSafe.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/4.
//

#import "AppDelegate+PandaSafe.h"
#import "PandaZoneModel.h"
#import "PadaCatagoryweizhiModel.h"
#import "PandaComentListModel.h"
#import "PandaMovieMsgModel.h"
#import "PandaMsgDetailModel.h"
#import "PandaMovieModel.h"
#import "PandaMoviewHotComentModel.h"
@implementation AppDelegate (PandaSafe)
+(void)load{
    [self PandaZoneModelConfig];
    [self PadaCatagoryweizhiModelConfig];
    [self PandaComentListModelConfig];
    [self PandaMovieMsgModelConfig];
    [self PandaMsgDetailModelConfig];
    [self PandaMoviewHomeModelConfig];
    [self PandaMovieHotComentCofnigs];

}
+(void)PandaMoviewHomeModelConfig{
    NSMutableArray * tempArr = [NSMutableArray array];
    PandaMovieModel * pandaItem = [[PandaMovieModel alloc]init];
    pandaItem.iswantWatching = YES;
    pandaItem.watchingNum = @"3亿";
    pandaItem.shangyinNum = 2;
    pandaItem.total_Num = 5;
    pandaItem.pandaMoiveThuburl = @"https://img1.doubanio.com/view/photo/l/public/p2584373767.jpg";
    pandaItem.PandaMoviewName = @"速度与激情9";
    pandaItem.PandaMoviewengishName  =@"Fast & Furious 9";
    pandaItem.PandaMoviewType = @"动作/犯罪/冒险/美国 ";
    pandaItem.PandaMoviewArtiss = @"Vin Diesel/Tyrese Gibson/Lucas Black/John Cena";
    pandaItem.PandaMoviewstar_five =0.6;
    pandaItem.PandaMoviewstar_foure =0.4;
    pandaItem.PandaMoviewstar_three =0.3;
    pandaItem.PandaMoviewstar_two =0.1;
    pandaItem.PandaMoviewstar_one =0.3;
    pandaItem.PandaMoview_isCollected = YES;
    pandaItem.PandaMoview_listArr = @[@{@"img":@"http://image11.m1905.cn/uploadfile/2013/1228/thumb_1_300_410_20131228103100376024.jpg",@"title":@"Vin Diesel"},@{@"img":@"http://image14.m1905.cn/uploadfile/2013/1228/thumb_1_300_410_20131228102405889151.jpg",@"title":@"Tyrese Gibson"},@{@"img":@"http://image14.m1905.cn/uploadfile/2013/0329/thumb_1_300_410_20130329062808553.jpg",@"title":@"Lucas Black"},@{@"img":@"http://image11.m1905.cn/mdb/uploadfile/2018/0104/thumb_1_300_410_20180104022954239793.jpg",@"title":@"John Cena"},@{@"img":@"http://pix2.tvzhe.com/thumb/character/445/431/140x190.jpg",@"title":@"莱蒂"},@{@"img":@"https://bkimg.cdn.bcebos.com/pic/cf1b9d16fdfaaf51904e979e865494eef01f7a65?x-bce-process=image/resize,m_lfit,w_268,limit_1/format,f_jpg",@"title":@"Sung Kang"},];
    pandaItem.PandaMoview_intrduce = @"《速度与激情9》是《速度与激情》系列电影的第9部。是由美国环球影业发行，林诣彬执导，范·迪塞尔、泰瑞斯·吉布森、卢卡斯·布莱克等主演的动作片，该片于2019年11月宣布杀青。该片于2021年5月21日在中国上映 ，2021年6月25日在北美上映。";
    pandaItem.PandaMoview_soureNums = 23665;
    pandaItem.PandaMoview_DBNums = 9.1;
    pandaItem.PandaMovie_ID = 0;
    pandaItem.PandaMoview_tagOne= @"动作";
    pandaItem.PandaMoview_tagtwo = @"犯罪";
    pandaItem.time = @"2021-05-21";
    pandaItem.Top_filmType = 0;
    [tempArr addObject:pandaItem];
    

    PandaMovieModel * pandaItem1 = [[PandaMovieModel alloc]init];
    pandaItem1.iswantWatching = NO;
    pandaItem1.watchingNum = @"2.42亿";
    pandaItem1.shangyinNum = 0;
    pandaItem1.total_Num = 3;
    pandaItem1.pandaMoiveThuburl = @"https://img1.doubanio.com/view/photo/l/public/p2634222677.jpg";
    pandaItem1.PandaMoviewName = @"我的姐姐";
    pandaItem1.PandaMoviewengishName  =@"my sister";
    pandaItem1.PandaMoviewType = @"剧情 家庭";
    pandaItem1.PandaMoviewArtiss = @"张子枫/肖央/朱媛媛/段博文/梁靖康";
    pandaItem1.PandaMoviewstar_five =0.8;
    pandaItem1.PandaMoviewstar_foure =0.3;
    pandaItem1.PandaMoviewstar_three =0.5;
    pandaItem1.PandaMoviewstar_two =0.2;
    pandaItem1.PandaMoviewstar_one =0.1;
    pandaItem1.PandaMoview_isCollected = NO;
    pandaItem1.PandaMoview_listArr = @[@{@"img":@"http://image11.m1905.cn/mdb/uploadfile/2018/0211/thumb_1_300_410_20180211101201702178.jpg",@"title":@"张子枫"},@{@"img":@"http://image13.m1905.cn/mdb/uploadfile/2017/1107/thumb_1_300_410_20171107031733761669.jpg",@"title":@"肖央"},@{@"img":@"http://image11.m1905.cn/uploadfile/2013/0318/thumb_1_300_410_20130318034353287.jpg",@"title":@"朱媛媛"},@{@"img":@"http://image11.m1905.cn/mdb/uploadfile/2018/1225/thumb_1_300_410_20181225021958726499.jpg",@"title":@"梁靖康"},@{@"img":@"http://image13.m1905.cn/uploadfile/2013/0423/thumb_1_300_410_20130423125649994.jpg",@"title":@"段博文"}];
    pandaItem1.PandaMoview_intrduce = @"《我的姐姐》围绕失去父母的姐姐在面对追求个人独立生活还是抚养弟弟的问题上展开了一段细腻感人的亲情故事。";
    pandaItem1.PandaMoview_soureNums = 6361;
    pandaItem1.PandaMoview_DBNums = 6.4;
    pandaItem1.PandaMovie_ID = 1;
    pandaItem1.PandaMoview_tagOne= @"剧情";
    pandaItem1.PandaMoview_tagtwo = @"家庭";
    pandaItem1.time = @"2021-04-02(内地)";
    pandaItem1.Top_filmType = 0;
    [tempArr addObject:pandaItem1];



    PandaMovieModel * pandaItem2 = [[PandaMovieModel alloc]init];
    pandaItem2.iswantWatching = NO;
    pandaItem2.watchingNum = @"3.65亿";
    pandaItem2.shangyinNum = 0;
    pandaItem2.total_Num = 4;
    pandaItem2.pandaMoiveThuburl = @"https://img9.doubanio.com/view/photo/l/public/p909265336.jpg";
    pandaItem2.PandaMoviewName = @"指环王：双塔奇兵";
    pandaItem2.PandaMoviewengishName  =@"The Lord of the Rings: The Two Towers";
    pandaItem2.PandaMoviewType = @"动作 剧情 冒险";
    pandaItem2.PandaMoviewArtiss = @"Elijah Wood/Sean Astin/Ian McKellen/Viggo Mortensen/Orlando Bloom";
    pandaItem2.PandaMoviewstar_five =0.9;
    pandaItem2.PandaMoviewstar_foure =0.5;
    pandaItem2.PandaMoviewstar_three =0.3;
    pandaItem2.PandaMoviewstar_two =0.2;
    pandaItem2.PandaMoviewstar_one =0.1;
    pandaItem2.PandaMoview_isCollected = NO;
    pandaItem2.PandaMoview_listArr = @[@{@"img":@"http://image13.m1905.cn/uploadfile/2014/0928/thumb_1_300_410_20140928032408374984.jpg",@"title":@"Elijah Wood"},@{@"img":@"http://image14.m1905.cn/uploadfile/2012/0723/thumb_1_300_410_20120723030227155.jpg",@"title":@"Sean Astin"},@{@"img":@"http://image14.m1905.cn/uploadfile/2013/0218/thumb_1_300_410_20130218091636870.jpg",@"title":@"Ian McKellen"},@{@"img":@"http://image11.m1905.cn/uploadfile/2013/0219/thumb_1_300_410_20130219055302891.jpg",@"title":@"Viggo Mortensen"},@{@"img":@"http://image14.m1905.cn/uploadfile/2013/1128/thumb_1_300_410_20131128015840975684.jpg",@"title":@"Orlando Bloom"}];
    pandaItem2.PandaMoview_intrduce = @"讲述护戒联盟中的哈比人梅利与皮平被奥克斯掳走，护戒使者们不得不分头行事：弗拉多与好友山姆继续向索隆领地莫都(Modor)进发，途中他们制服了也在疯狂寻找魔戒的怪物古鲁姆(Gollum)，魔戒曾经为他带来了长寿与隐身之道直到弗拉多的前辈毕尔博拿走了这枚戒指。由于通向莫都的路途十分艰险，而末日山就在莫都的北面，所以弗拉多与山姆不得不依靠古鲁姆的帮助。除了要时刻提防心怀鬼胎的古鲁姆，以及强大的魔戒幽灵，弗拉多还要抵御魔戒对其心灵愈来愈强的侵蚀，可谓生死一线，险情迭出…… 另一面护戒使者阿拉贡、莱格拉斯与吉穆利则与成功逃离奥克斯营地的梅利与皮平会合，并加入人类族群罗翰国(Rohan)的队伍准备对邪恶的白衣术士萨茹曼的领地伊森加德发动进攻。而此时黑魁首索隆也策动其奥克斯部队向罗翰的首都埃多拉斯进发，精灵族与人类的联盟将遭到黑魔法兽兵强大战斗力与萨茹曼邪恶魔法的双重挑战！紧要关头甘多夫再度现身，更从灰衣法师升至法力无边的白衣法师，双方一场恶战在所难免！";
    pandaItem2.PandaMoview_soureNums = 83192;
    pandaItem2.PandaMoview_DBNums = 8.9;
    pandaItem2.PandaMovie_ID = 2;
    pandaItem2.PandaMoview_tagOne= @"动作";
    pandaItem2.PandaMoview_tagtwo = @"剧情";
    pandaItem2.time = @"2021-04-23(内地)";
    pandaItem2.Top_filmType = 0;
    [tempArr addObject:pandaItem2];
    
    
    
    PandaMovieModel * pandaItem3 = [[PandaMovieModel alloc]init];
    pandaItem3.iswantWatching = NO;
    pandaItem3.watchingNum = @"2.41亿";
    pandaItem3.shangyinNum = 0;
    pandaItem3.total_Num = 3;
    pandaItem3.pandaMoiveThuburl = @"https://img3.doubanio.com/view/photo/l/public/p2637126461.jpg";
    pandaItem3.PandaMoviewName = @"名侦探柯南：绯色的子弹";
    pandaItem3.PandaMoviewengishName  =@"名探偵コナン 緋色の弾丸";
    pandaItem3.PandaMoviewType = @"动画";
    pandaItem3.PandaMoviewArtiss = @"高山南/山崎和佳奈/小山力也/林原惠美/日高法子";
    pandaItem3.PandaMoviewstar_five =0.6;
    pandaItem3.PandaMoviewstar_foure =0.2;
    pandaItem3.PandaMoviewstar_three =0.2;
    pandaItem3.PandaMoviewstar_two =0.1;
    pandaItem3.PandaMoviewstar_one =0.1;
    pandaItem3.PandaMoview_isCollected = NO;
    pandaItem3.PandaMoview_listArr = @[@{@"img":@"http://image13.m1905.cn/uploadfile/2012/0903/thumb_1_300_410_20120903033707293.jpg",@"title":@"高山南"},@{@"img":@"http://image11.m1905.cn/uploadfile/2013/0401/thumb_1_300_410_20130401022125828.jpg",@"title":@"山崎和佳奈"},@{@"img":@"http://image14.m1905.cn/uploadfile/2012/0903/thumb_1_300_410_20120903034345829.jpg",@"title":@"小山力也"},@{@"img":@"http://image14.m1905.cn/uploadfile/2013/0403/thumb_1_300_410_20130403121228363.jpg",@"title":@"林原惠美"},@{@"img":@"http://image13.m1905.cn/mdb/uploadfile/2016/0601/thumb_1_300_410_20160601033251547927.jpg",@"title":@"日高法子"}];
    pandaItem3.PandaMoview_intrduce = @"在东京举办的世界级别的体育节「ワールドスポーツゲーム(WAG)」为此集结的人们……如此国际级别的活动却有事件发生的预感……";
    pandaItem3.PandaMoview_soureNums =68317;
    pandaItem3.PandaMoview_DBNums = 6.4;
    pandaItem3.PandaMovie_ID = 3;
    pandaItem3.PandaMoview_tagOne= @"动画";
    pandaItem3.PandaMoview_tagtwo = @"";
    pandaItem3.time = @"2021-04-17(内地)";
    pandaItem3.Top_filmType = 0;
    [tempArr addObject:pandaItem3];
    
    
    
    PandaMovieModel * pandaItem4 = [[PandaMovieModel alloc]init];
    pandaItem4.iswantWatching = NO;
    pandaItem4.watchingNum = @"2.54亿";
    pandaItem4.shangyinNum = 0;
    pandaItem4.total_Num = 4;
    pandaItem4.pandaMoiveThuburl = @"https://img1.doubanio.com/view/photo/l/public/p2637793909.jpg";
    pandaItem4.PandaMoviewName = @"真·三国无双";
    pandaItem4.PandaMoviewengishName  =@"Dynasty Warriors ";
    pandaItem4.PandaMoviewType = @"爱情";
    pandaItem4.PandaMoviewArtiss = @"王凯/杨祐宁/古天乐/古力娜扎/韩庚";
    pandaItem4.PandaMoviewstar_five =0.5;
    pandaItem4.PandaMoviewstar_foure =0.4;
    pandaItem4.PandaMoviewstar_three =0.1;
    pandaItem4.PandaMoviewstar_two =0.1;
    pandaItem4.PandaMoviewstar_one =0.1;
    pandaItem4.PandaMoview_isCollected = YES;
    pandaItem4.PandaMoview_listArr = @[@{@"img":@"http://image14.m1905.cn/mdb/uploadfile/2017/0927/thumb_1_300_410_20170927031056540057.jpg",@"title":@"王凯"},@{@"img":@"http://image14.m1905.cn/mdb/uploadfile/2017/1201/thumb_1_300_410_20171201023839888745.jpg",@"title":@"古天乐"},@{@"img":@"http://image14.m1905.cn/uploadfile/2013/0217/thumb_1_300_410_20130217022341451.jpg",@"title":@"杨祐宁"},@{@"img":@"http://image13.m1905.cn/mdb/uploadfile/2015/1214/thumb_1_300_410_20151214014729661602.jpg",@"title":@"古力娜扎"},@{@"img":@"http://image11.m1905.cn/mdb/uploadfile/2017/0927/thumb_1_168_230_20170927012428539069.jpg",@"title":@"韩庚"}];
    pandaItem4.PandaMoview_intrduce = @"首次将《真.三国无双》电影化，该游戏系列的原作制作人铃木亮浩和日本光荣株式会社海外事业推进部部长小林英圣，特别到港公布开拍电影版的详情。而电影版则由《黄飞鸿之英雄有梦》导演周显扬执导及编剧杜致朗再次联手，打造全新三国时代。";
    pandaItem4.PandaMoview_soureNums = 2152;
    pandaItem4.PandaMoview_DBNums = 6.9;
    pandaItem4.PandaMovie_ID = 4;
    pandaItem4.PandaMoview_tagOne= @"爱情";
    pandaItem4.PandaMoview_tagtwo = @"";
    pandaItem4.time = @"2021-04-30(内地)";
    pandaItem4.Top_filmType = 0;
    [tempArr addObject:pandaItem4];
    
    
    PandaMovieModel * pandaItem5 = [[PandaMovieModel alloc]init];
    pandaItem5.iswantWatching = NO;
    pandaItem5.watchingNum = @"2.56亿";
    pandaItem5.shangyinNum = 0;
    pandaItem5.total_Num = 2;
    pandaItem5.pandaMoiveThuburl = @"https://img2.doubanio.com/view/photo/l/public/p2636651422.jpg";
    pandaItem5.PandaMoviewName = @"八月未央";
    pandaItem5.PandaMoviewengishName  =@"August Weiyang";
    pandaItem5.PandaMoviewType = @"爱情";
    pandaItem5.PandaMoviewArtiss = @"谭松韵/钟楚曦/古天乐/古力娜扎/韩庚";
    pandaItem5.PandaMoviewstar_five =0.5;
    pandaItem5.PandaMoviewstar_foure =0.4;
    pandaItem5.PandaMoviewstar_three =0.1;
    pandaItem5.PandaMoviewstar_two =0.1;
    pandaItem5.PandaMoviewstar_one =0.1;
    pandaItem5.PandaMoview_isCollected = NO;
    pandaItem5.PandaMoview_listArr = @[@{@"img":@"http://image13.m1905.cn/mdb/uploadfile/2017/1013/thumb_1_300_410_20171013112239153163.jpg",@"title":@"谭松韵"},@{@"img":@"http://image13.m1905.cn/mdb/uploadfile/2017/1211/thumb_1_300_410_20171211024333906246.jpg",@"title":@"钟楚曦"},@{@"img":@"http://image14.m1905.cn/mdb/uploadfile/2018/0126/thumb_1_300_410_20180126034442589864.jpg",@"title":@"罗晋"}];
    pandaItem5.PandaMoview_intrduce = @"影片《八月未央》改编自安妮宝贝同名小说，讲述一对性格迥异的闺蜜知己——率真叛逆的未央和憧憬完美婚姻的乔，不约而同爱上了同一个男人朝颜的爱情故事。";
    pandaItem5.PandaMoview_soureNums = 31763;
    pandaItem5.PandaMoview_DBNums = 6.9;
    pandaItem5.PandaMovie_ID = 5;
    pandaItem5.PandaMoview_tagOne= @"爱情";
    pandaItem5.PandaMoview_tagtwo = @"";
    pandaItem5.time = @"2021-04-30(内地)";
    pandaItem5.Top_filmType = 0;
    [tempArr addObject:pandaItem5];
    
    
    PandaMovieModel * pandaItem6 = [[PandaMovieModel alloc]init];
    pandaItem6.iswantWatching = NO;
    pandaItem6.watchingNum = @"1.23亿";
    pandaItem6.shangyinNum = 0;
    pandaItem6.total_Num = 4;
    pandaItem6.pandaMoiveThuburl = @"https://img1.doubanio.com/view/photo/m/public/p2639382329.jpg";
    pandaItem6.PandaMoviewName = @"超级的我";
    pandaItem6.PandaMoviewengishName  =@"Super Me";
    pandaItem6.PandaMoviewType = @"奇幻 冒险";
    pandaItem6.PandaMoviewArtiss = @"王大陆/宋佳/吴刚/金燕玲";
    pandaItem6.PandaMoviewstar_five =0.6;
    pandaItem6.PandaMoviewstar_foure =0.4;
    pandaItem6.PandaMoviewstar_three =0.1;
    pandaItem6.PandaMoviewstar_two =0.1;
    pandaItem6.PandaMoviewstar_one =0.1;
    pandaItem6.PandaMoview_isCollected = NO;
    pandaItem6.PandaMoview_listArr = @[@{@"img":@"http://image11.m1905.cn/mdb/uploadfile/2017/1201/thumb_1_300_410_20171201022557304756.jpg",@"title":@"王大陆"},@{@"img":@"http://image13.m1905.cn/mdb/uploadfile/2018/0702/thumb_1_300_410_20180702042045133179.jpg",@"title":@"宋佳"},@{@"img":@"http://image14.m1905.cn/mdb/uploadfile/2019/0325/thumb_1_300_410_20190325112845998316.jpg",@"title":@"曹炳琨"},@{@"img":@"http://image14.m1905.cn/mdb/uploadfile/2017/1107/thumb_1_300_410_20171107105652402180.jpg",@"title":@"吴刚"},@{@"img":@"http://image14.m1905.cn/mdb/uploadfile/2019/0618/thumb_1_300_410_20190618111500880587.jpg",@"title":@"金燕玲"}];
    pandaItem6.PandaMoview_intrduce = @"18线小编剧桑榆（王大陆 饰）原本生活困顿拮据，但一夜之间却拥有了梦中取物的神奇能力，通过将梦中的宝物变现，潦倒落魄的他成为人生赢家，甚至一掷千金追求到暗恋多年的花儿（宋佳 饰），然而在梦中快意掠取的桑榆却逐渐发现，这场躺赢美梦竟将他的生活推向了失控的边缘……";
    pandaItem6.PandaMoview_soureNums = 21312;
    pandaItem6.PandaMoview_DBNums = 5.3;
    pandaItem6.PandaMovie_ID = 6;
    pandaItem6.PandaMoview_tagOne= @"奇幻";
    pandaItem6.PandaMoview_tagtwo = @"冒险";
    pandaItem6.time = @"2021-04-09(内地)";
    pandaItem6.Top_filmType = 0;
    [tempArr addObject:pandaItem6];
    
    
    PandaMovieModel * pandaItem7 = [[PandaMovieModel alloc]init];
    pandaItem7.iswantWatching = NO;
    pandaItem7.watchingNum = @"2.01亿";
    pandaItem7.shangyinNum = 12;
    pandaItem7.total_Num = 5;
    pandaItem7.pandaMoiveThuburl = @"https://img3.doubanio.com/view/photo/m/public/p2637771301.jpg";
    pandaItem7.PandaMoviewName = @"西游记之再世妖王 ";
    pandaItem7.PandaMoviewengishName  =@"Monkey King Reborn";
    pandaItem7.PandaMoviewType = @"动画";
    pandaItem7.PandaMoviewArtiss = @"边江/张磊/苏尚卿/张赫";
    pandaItem7.PandaMoviewstar_five =0.4;
    pandaItem7.PandaMoviewstar_foure =0.2;
    pandaItem7.PandaMoviewstar_three =0.1;
    pandaItem7.PandaMoviewstar_two =0.1;
    pandaItem7.PandaMoviewstar_one =0.1;
    pandaItem7.PandaMoview_isCollected = NO;
    pandaItem7.PandaMoview_listArr = @[@{@"img":@"http://image11.m1905.cn/mdb/uploadfile/2021/0305/thumb_1_300_410_20210305094536308320.jpg",@"title":@"边江"},@{@"img":@"http://image14.m1905.cn/mdb/uploadfile/2018/0727/thumb_1_300_410_20180727021730541339.jpg",@"title":@"张磊"},@{@"img":@"http://image11.m1905.cn/mdb/uploadfile/2018/1224/thumb_1_300_410_20181224043647334765.jpg",@"title":@"苏尚卿"},@{@"img":@"http://image13.m1905.cn/mdb/uploadfile/2020/1224/thumb_1_300_410_20201224085024939210.jpg",@"title":@"张赫"}];
    pandaItem7.PandaMoview_intrduce = @"混沌初开之时，世上的第一只妖降世，名元蒂，被奉为妖祖。千百万年后，昔日妖王孙悟空被唐僧从五行山下救出，悟空答应保护唐僧，前往西天取经。而传说中的妖祖元蒂再次现世，三界岌岌可危。两代妖王注定终极一战，但这次，孙悟空遇上了真正的劲敌。";
    pandaItem7.PandaMoview_soureNums = 3128;
    pandaItem7.PandaMoview_DBNums = 4.2;
    pandaItem7.PandaMovie_ID = 7;
    pandaItem7.PandaMoview_tagOne= @"动画";
    pandaItem7.PandaMoview_tagtwo = @"";
    pandaItem7.time = @"2021-04-02(内地)";
    pandaItem7.Top_filmType = 0;
    [tempArr addObject:pandaItem7];
    
    //
    PandaMovieModel * pandaItem8 = [[PandaMovieModel alloc]init];
    pandaItem8.iswantWatching = NO;
    pandaItem8.watchingNum = @"3.25亿";
    pandaItem8.shangyinNum = 453;
    pandaItem8.total_Num = 3;
    pandaItem8.pandaMoiveThuburl = @"https://img9.doubanio.com/view/photo/l/public/p2638834216.jpg";
    pandaItem8.PandaMoviewName = @"六人-泰坦尼克上的中国幸存者 ";
    pandaItem8.PandaMoviewengishName  =@"The Six";
    pandaItem8.PandaMoviewType = @"动画";
    pandaItem8.PandaMoviewArtiss = @"施万克";
    pandaItem8.PandaMoviewstar_five =0.2;
    pandaItem8.PandaMoviewstar_foure =0.2;
    pandaItem8.PandaMoviewstar_three =0.1;
    pandaItem8.PandaMoviewstar_two =0.1;
    pandaItem8.PandaMoviewstar_one =0.1;
    pandaItem8.PandaMoview_isCollected = NO;
    pandaItem8.PandaMoview_listArr = @[@{@"img":@"http://image11.m1905.cn/mdb/uploadfile/2020/0117/thumb_1_300_410_20200117094232259181.jpg",@"title":@"施万克"}];
    pandaItem8.PandaMoview_intrduce = @"由詹姆斯·卡梅隆监制的纪录片《六人-泰坦尼克上的中国幸存者》还原于1912年4月14日沉没的泰坦尼克号上，六个被遗忘的中国人的逃生经历、追寻他们的人生轨迹，揭示被掩盖一个世纪之久的真相。";
    pandaItem8.PandaMoview_soureNums = 3131;
    pandaItem8.PandaMoview_DBNums = 3.1;
    pandaItem8.PandaMovie_ID = 8;
    pandaItem8.PandaMoview_tagOne= @"动画";
    pandaItem8.PandaMoview_tagtwo = @"";
    pandaItem8.time = @"2021-04-16(内地)";
    pandaItem8.Top_filmType = 0;
    [tempArr addObject:pandaItem8];
    
    PandaMovieModel * pandaItem9 = [[PandaMovieModel alloc]init];
    pandaItem9.iswantWatching = NO;
    pandaItem9.watchingNum = @"1.42亿";
    pandaItem9.shangyinNum = 120;
    pandaItem9.total_Num = 4;
    pandaItem9.pandaMoiveThuburl = @"https://img9.doubanio.com/view/photo/l/public/p2544299266.jpg";
    pandaItem9.PandaMoviewName = @"冰雪大作战2";
    pandaItem9.PandaMoviewengishName  =@"Racetime";
    pandaItem9.PandaMoviewType = @"动画 喜剧 冒险";
    pandaItem9.PandaMoviewArtiss = @"施万克";
    pandaItem9.PandaMoviewstar_five =0.6;
    pandaItem9.PandaMoviewstar_foure =0.4;
    pandaItem9.PandaMoviewstar_three =0.3;
    pandaItem9.PandaMoviewstar_two =0.2;
    pandaItem9.PandaMoviewstar_one =0.1;
    pandaItem9.PandaMoview_isCollected = NO;
    pandaItem9.PandaMoview_listArr = @[@{@"img":@"http://image11.m1905.cn/mdb/uploadfile/2020/0117/thumb_1_300_410_20200117094232259181.jpg",@"title":@"施万克"}];
    pandaItem9.PandaMoview_intrduce = @"续作延续前一部的风格，讲述在这座加拿大小镇上，开展了一场盛大的雪橇比赛，弗兰基带着他的团队参赛，而索菲亚则担任舵手，除此之外，还有新的成员加入了这场比赛，包括神秘而自负的扎克、以及扎克的运动员表姐查莉....";
    pandaItem9.PandaMoview_soureNums = 4241;
    pandaItem9.PandaMoview_DBNums = 5.7;
    pandaItem9.PandaMovie_ID = 9;
    pandaItem9.PandaMoview_tagOne= @"动画";
    pandaItem9.PandaMoview_tagtwo = @"喜剧";
    pandaItem9.time = @"2021-04-30(内地)";
    pandaItem9.Top_filmType = 0;
    [tempArr addObject:pandaItem9];
    
    
    
    
    
    PandaMovieModel * pandaItem10 = [[PandaMovieModel alloc]init];
    pandaItem10.iswantWatching = NO;
    pandaItem10.watchingNum = @"2.13亿";
    pandaItem10.shangyinNum = 43;
    pandaItem10.total_Num = 3;
    pandaItem10.pandaMoiveThuburl = @"https://img1.doubanio.com/view/photo/m/public/p2639148697.jpg";
    pandaItem10.PandaMoviewName = @"真人快打";
    pandaItem10.PandaMoviewengishName  =@"Mortal Kombat";
    pandaItem10.PandaMoviewType = @"动作 冒险 奇幻";
    pandaItem10.PandaMoviewArtiss = @"浅野忠信/刘易斯·谭/真田广之";
    pandaItem10.PandaMoviewstar_five =0.7;
    pandaItem10.PandaMoviewstar_foure =0.3;
    pandaItem10.PandaMoviewstar_three =0.2;
    pandaItem10.PandaMoviewstar_two =0.1;
    pandaItem10.PandaMoviewstar_one =0.1;
    pandaItem10.PandaMoview_isCollected = NO;
    pandaItem10.PandaMoview_listArr = @[@{@"img":@"http://image11.m1905.cn/mdb/uploadfile/2017/0606/thumb_1_300_410_20170606110256889087.jpg",@"title":@"浅野忠信"},@{@"img":@"http://image13.m1905.cn/mdb/uploadfile/2018/0129/thumb_1_300_410_20180129110448341582.jpg",@"title":@"刘易斯·谭"},@{@"img":@"http://image14.m1905.cn/mdb/uploadfile/2017/0526/thumb_1_300_410_20170526045048720441.jpg",@"title":@"真田广之"}];
    pandaItem10.PandaMoview_intrduce = @"续作延续前一部的风格，讲述在这座加拿大小镇上，开展了一场盛大的雪橇比赛，弗兰基带着他的团队参赛，而索菲亚则担任舵手，除此之外，还有新的成员加入了这场比赛，包括神秘而自负的扎克、以及扎克的运动员表姐查莉....";
    pandaItem10.PandaMoview_soureNums = 2161;
    pandaItem10.PandaMoview_DBNums = 8.2;
    pandaItem10.PandaMovie_ID = 10;
    pandaItem10.PandaMoview_tagOne= @"动画";
    pandaItem10.PandaMoview_tagtwo = @"喜剧";
    pandaItem10.time = @"2021-04-23(美国)";
    pandaItem10.Top_filmType = 1;
    [tempArr addObject:pandaItem10];
    
    
    PandaMovieModel * pandaItem11 = [[PandaMovieModel alloc]init];
    pandaItem11.iswantWatching = NO;
    pandaItem11.watchingNum = @"1.04亿";
    pandaItem11.shangyinNum = 21;
    pandaItem11.total_Num = 4;
    pandaItem11.pandaMoiveThuburl = @"https://image11.m1905.cn/mdb/uploadfile/2021/0312/thumb_1_283_390_20210312014243270403.jpg";
    pandaItem11.PandaMoviewName = @"星期一";
    pandaItem11.PandaMoviewengishName  =@"Monday";
    pandaItem11.PandaMoviewType = @"剧情 爱情";
    pandaItem11.PandaMoviewArtiss = @"塞巴斯蒂安·斯坦/范杰利斯·莫里基斯";
    pandaItem11.PandaMoviewstar_five =0.6;
    pandaItem11.PandaMoviewstar_foure =0.4;
    pandaItem11.PandaMoviewstar_three =0.1;
    pandaItem11.PandaMoviewstar_two =0.2;
    pandaItem11.PandaMoviewstar_one =0.2;
    pandaItem11.PandaMoview_isCollected = NO;
    pandaItem11.PandaMoview_listArr = @[@{@"img":@"http://image14.m1905.cn/uploadfile/2013/1228/thumb_1_300_410_20131228110430861269.jpg",@"title":@"塞巴斯蒂安·斯坦"},@{@"img":@"http://image14.m1905.cn/uploadfile/2014/0212/thumb_1_300_410_20140212022053914159.jpg",@"title":@"范杰利斯·莫里基斯"}];
    pandaItem11.PandaMoview_intrduce = @"本片讲述两个自毁倾向的美国人Mickey和Chloe，住在雅典和希腊群岛之间，发展出了海啸般的恋爱，据称是一段“现代人似乎已不再热衷”的“热烈的恋情”，但会让每个人有共鸣。";
    pandaItem11.PandaMoview_soureNums = 3127;
    pandaItem11.PandaMoview_DBNums = 6.4;
    pandaItem11.PandaMovie_ID = 11;
    pandaItem11.PandaMoview_tagOne= @"剧情";
    pandaItem11.PandaMoview_tagtwo = @"爱情";
    pandaItem11.time = @"2021-04-16(美国)";
    pandaItem11.Top_filmType = 1;
    [tempArr addObject:pandaItem11];
    
    
    PandaMovieModel * pandaItem12 = [[PandaMovieModel alloc]init];
    pandaItem12.iswantWatching = NO;
    pandaItem12.watchingNum = @"0.12亿";
    pandaItem12.shangyinNum = 435;
    pandaItem12.total_Num = 3;
    pandaItem12.pandaMoiveThuburl = @"https://image11.m1905.cn/mdb/uploadfile/2021/0108/thumb_1_283_390_20210108012525840951.jpg";
    pandaItem12.PandaMoviewName = @"椿之庭";
    pandaItem12.PandaMoviewengishName  =@"椿の庭";
    pandaItem12.PandaMoviewType = @"剧情";
    pandaItem12.PandaMoviewArtiss = @"富司纯子/沈恩京/铃木京香/张震";
    pandaItem12.PandaMoviewstar_five =0.8;
    pandaItem12.PandaMoviewstar_foure =0.3;
    pandaItem12.PandaMoviewstar_three =0.1;
    pandaItem12.PandaMoviewstar_two =0.5;
    pandaItem12.PandaMoviewstar_one =0.2;
    pandaItem12.PandaMoview_isCollected = NO;
    pandaItem12.PandaMoview_listArr = @[@{@"img":@"http://image14.m1905.cn/uploadfile/2011/0728/thumb_1_300_410_20110728111226721.jpg",@"title":@"富司纯子"},@{@"img":@"http://image11.m1905.cn/uploadfile/2014/0228/thumb_1_300_410_20140228111120537824.jpg",@"title":@"沈恩京"},@{@"img":@"http://image11.m1905.cn/uploadfile/2013/0409/thumb_1_300_410_20130409033955284.jpg",@"title":@"铃木京香"},@{@"img":@"http://image14.m1905.cn/mdb/uploadfile/2017/1207/thumb_1_300_410_20171207013956689005.jpg",@"title":@"张震"}];
    pandaItem12.PandaMoview_intrduce = @"奶奶娟子(富司纯子饰)、孙女渚(沈恩京饰)住在山茶花盛开的房屋中，故事讲述了一年中来过这里的人们。铃木京香饰演渚的姑姑，张震扮演不受欢迎的访客黄。";
    pandaItem12.PandaMoview_soureNums = 3127;
    pandaItem12.PandaMoview_DBNums = 5.7;
    pandaItem12.PandaMovie_ID = 12;
    pandaItem12.PandaMoview_tagOne= @"剧情";
    pandaItem12.PandaMoview_tagtwo = @"";
    pandaItem12.time = @"2021-04-09(日本)";
    pandaItem12.Top_filmType = 1;
    [tempArr addObject:pandaItem12];
    
    
    
    PandaMovieModel * pandaItem13 = [[PandaMovieModel alloc]init];
    pandaItem13.iswantWatching = NO;
    pandaItem13.watchingNum = @"0.16亿";
    pandaItem13.shangyinNum = 139;
    pandaItem13.total_Num = 4;
    pandaItem13.pandaMoiveThuburl = @"https://img2.doubanio.com/view/photo/l/public/p2633869942.jpg";
    pandaItem13.PandaMoviewName = @"信使";
    pandaItem13.PandaMoviewengishName  =@"The Courier";
    pandaItem13.PandaMoviewType = @"剧情";
    pandaItem13.PandaMoviewArtiss = @"本尼迪克特·康伯巴奇/沈恩京/蕾切尔·布罗斯纳安";
    pandaItem13.PandaMoviewstar_five =0.6;
    pandaItem13.PandaMoviewstar_foure =0.4;
    pandaItem13.PandaMoviewstar_three =0.2;
    pandaItem13.PandaMoviewstar_two =0.1;
    pandaItem13.PandaMoviewstar_one =0.2;
    pandaItem13.PandaMoview_isCollected = NO;
    pandaItem13.PandaMoview_listArr = @[@{@"img":@"http://image11.m1905.cn/uploadfile/2013/1217/thumb_1_300_410_20131217102130438536.jpg",@"title":@"本尼迪克特·康伯巴奇"},@{@"img":@"http://image11.m1905.cn/mdb/uploadfile/2017/1020/thumb_1_300_410_20171020091309520668.jpg",@"title":@"蕾切尔·布罗斯纳安"}];
    pandaItem13.PandaMoview_intrduce = @"故事根据格里维尔·韦恩(本尼迪克特饰演)的真实事件改编的。格里维尔·韦恩是一位英国商人，曾在冷战期间帮助美国中央情报局渗透苏联的核项目。韦恩和他的俄罗斯线人奥列格·彭科夫斯基提供了结束古巴导弹危机的关键情报。";
    pandaItem13.PandaMoview_soureNums = 47123;
    pandaItem13.PandaMoview_DBNums = 6.9;
    pandaItem13.PandaMovie_ID = 13;
    pandaItem13.PandaMoview_tagOne= @"剧情";
    pandaItem13.PandaMoview_tagtwo = @"";
    pandaItem13.time = @"2021-03-19(美国)";
    pandaItem13.Top_filmType = 1;
    [tempArr addObject:pandaItem13];
    
    
    PandaMovieModel * pandaItem14 = [[PandaMovieModel alloc]init];
    pandaItem14.iswantWatching = NO;
    pandaItem14.watchingNum = @"1.25亿";
    pandaItem14.shangyinNum = 142;
    pandaItem14.total_Num = 5;
    pandaItem14.pandaMoiveThuburl = @"https://img1.doubanio.com/view/photo/l/public/p2632012488.jpg";
    pandaItem14.PandaMoviewName = @"美国之旅2";
    pandaItem14.PandaMoviewengishName  =@"Coming to America 2 ";
    pandaItem14.PandaMoviewType = @"喜剧";
    pandaItem14.PandaMoviewArtiss = @"艾迪·墨菲/詹姆斯·厄尔·琼斯/Jermaine Fowler";
    pandaItem14.PandaMoviewstar_five =0.8;
    pandaItem14.PandaMoviewstar_foure =0.4;
    pandaItem14.PandaMoviewstar_three =0.4;
    pandaItem14.PandaMoviewstar_two =0.2;
    pandaItem14.PandaMoviewstar_one =0.1;
    pandaItem14.PandaMoview_isCollected = NO;
    pandaItem14.PandaMoview_listArr = @[@{@"img":@"http://image13.m1905.cn/uploadfile/2012/0719/thumb_1_300_410_20120719041224474.jpg",@"title":@"艾迪·墨菲"},@{@"img":@"http://image14.m1905.cn/uploadfile/2013/0315/thumb_1_300_410_20130315043044871.jpg",@"title":@"詹姆斯·厄尔·琼斯"},@{@"img":@"http://image13.m1905.cn/mdb/uploadfile/2018/0312/thumb_1_300_410_20180312093713379701.jpg",@"title":@"Jermaine Fowler"}];
    pandaItem14.PandaMoview_intrduce = @"乔纳森·莱文([抗癌的我]、[母女大战])将执导1988年艾迪·墨菲主演的[美国之旅]续集。[嗨翻姐妹行]编剧肯尼亚·巴里斯执笔剧本。艾迪·墨菲也参与到该片的制作中，尽管目前尚不明确他是否回归主演。";
    pandaItem14.PandaMoview_soureNums = 47123;
    pandaItem14.PandaMoview_DBNums = 7.3;
    pandaItem14.PandaMovie_ID = 14;
    pandaItem14.PandaMoview_tagOne= @"喜剧";
    pandaItem14.PandaMoview_tagtwo = @"";
    pandaItem14.time = @"2021-03-05(美国)";
    pandaItem14.Top_filmType = 1;
    [tempArr addObject:pandaItem14];
    
    
    PandaMovieModel * pandaItem15 = [[PandaMovieModel alloc]init];
    pandaItem15.iswantWatching = NO;
    pandaItem15.watchingNum = @"2.13亿";
    pandaItem15.shangyinNum = 45;
    pandaItem15.total_Num = 3;
    pandaItem15.pandaMoiveThuburl = @"https://img2.doubanio.com/view/photo/l/public/p2641633513.jpg";
    pandaItem15.PandaMoviewName = @"偷渡者";
    pandaItem15.PandaMoviewengishName  =@"Stowaway";
    pandaItem15.PandaMoviewType = @"剧情 科幻 惊悚";
    pandaItem15.PandaMoviewArtiss = @"安娜·肯德里克/丹尼尔·金";
    pandaItem15.PandaMoviewstar_five =0.5;
    pandaItem15.PandaMoviewstar_foure =0.2;
    pandaItem15.PandaMoviewstar_three =0.1;
    pandaItem15.PandaMoviewstar_two =0.1;
    pandaItem15.PandaMoviewstar_one =0.2;
    pandaItem15.PandaMoview_isCollected = NO;
    pandaItem15.PandaMoview_listArr = @[@{@"img":@"http://image11.m1905.cn/uploadfile/2013/1206/thumb_1_300_410_20131206110423229835.jpg",@"title":@"安娜·肯德里克"},@{@"img":@"http://image13.m1905.cn/uploadfile/2013/0329/thumb_1_300_410_20130329014842323.jpg",@"title":@"丹尼尔·金"}];
    pandaItem15.PandaMoview_intrduce = @"一艘宇宙飞船前往火星，起飞不久后机组成员却发现了一个偷渡者。由于这艘飞船的装备只能支持三名乘客，而且它的生命支持系统也受到了一些无法弥补的损害，机组成员们面临着一个不可能解决的问题。";
    pandaItem15.PandaMoview_soureNums = 4678;
    pandaItem15.PandaMoview_DBNums = 7.3;
    pandaItem15.PandaMovie_ID = 15;
    pandaItem15.PandaMoview_tagOne= @"剧情";
    pandaItem15.PandaMoview_tagtwo = @"科幻";
    pandaItem15.time = @"2021-04-22(美国)";
    pandaItem15.Top_filmType = 1;
    [tempArr addObject:pandaItem15];
    
    
    PandaMovieModel * pandaItem16 = [[PandaMovieModel alloc]init];
    pandaItem16.iswantWatching = NO;
    pandaItem16.watchingNum = @"1.24亿";
    pandaItem16.shangyinNum = 26;
    pandaItem16.total_Num = 3;
    pandaItem16.pandaMoiveThuburl = @"https://img1.doubanio.com/view/photo/l/public/p2641942787.jpg";
    pandaItem16.PandaMoviewName = @"小人物";
    pandaItem16.PandaMoviewengishName  =@"Nobody";
    pandaItem16.PandaMoviewType = @"动作 惊悚";
    pandaItem16.PandaMoviewArtiss = @"康妮·尼尔森/鲍勃·奥登科克";
    pandaItem16.PandaMoviewstar_five =0.6;
    pandaItem16.PandaMoviewstar_foure =0.3;
    pandaItem16.PandaMoviewstar_three =0.1;
    pandaItem16.PandaMoviewstar_two =0.1;
    pandaItem16.PandaMoviewstar_one =0.2;
    pandaItem16.PandaMoview_isCollected = NO;
    pandaItem16.PandaMoview_listArr = @[@{@"img":@"http://image13.m1905.cn/uploadfile/2013/1231/thumb_1_300_410_20131231120252786580.jpg",@"title":@"康妮·尼尔森"},@{@"img":@"http://image13.m1905.cn/uploadfile/2013/1129/thumb_1_300_410_20131129015612483625.jpg",@"title":@"鲍勃·奥登科克"}];
    pandaItem16.PandaMoview_intrduce = @"一艘宇宙飞船前往火星，起飞不久后机组成员却发现了一个偷渡者。由于这艘飞船的装备只能支持三名乘客，而且它的生命支持系统也受到了一些无法弥补的损害，机组成员们面临着一个不可能解决的问题。";
    pandaItem16.PandaMoview_soureNums = 12784;
    pandaItem16.PandaMoview_DBNums = 5.0;
    pandaItem16.PandaMovie_ID = 16;
    pandaItem16.PandaMoview_tagOne= @"动作";
    pandaItem16.PandaMoview_tagtwo = @"惊悚";
    pandaItem16.time = @"2021-04-02(美国)";
    pandaItem16.Top_filmType = 1;
    [tempArr addObject:pandaItem16];
    
    
    
    PandaMovieModel * pandaItem17 = [[PandaMovieModel alloc]init];
    pandaItem17.iswantWatching = NO;
    pandaItem17.watchingNum = @"1.25亿";
    pandaItem17.shangyinNum = 21;
    pandaItem17.total_Num = 5;
    pandaItem17.pandaMoiveThuburl = @"https://img2.doubanio.com/view/photo/l/public/p2642783443.jpg";
    pandaItem17.PandaMoviewName = @"人之怒";
    pandaItem17.PandaMoviewengishName  =@"Wrath of Man";
    pandaItem17.PandaMoviewType = @"动作 犯罪";
    pandaItem17.PandaMoviewArtiss = @"杰森·斯坦森/乔什·哈奈特/斯科特·伊斯特伍德";
    pandaItem17.PandaMoviewstar_five =0.8;
    pandaItem17.PandaMoviewstar_foure =0.3;
    pandaItem17.PandaMoviewstar_three =0.1;
    pandaItem17.PandaMoviewstar_two =0.1;
    pandaItem17.PandaMoviewstar_one =0.2;
    pandaItem17.PandaMoview_isCollected = NO;
    pandaItem17.PandaMoview_listArr = @[@{@"img":@"http://image13.m1905.cn/mdb/uploadfile/2019/0819/thumb_1_300_410_20190819020825626436.jpg",@"title":@"杰森·斯坦森"},@{@"img":@"http://image11.m1905.cn/uploadfile/2009/0820/thumb_1_300_410_200908201052019583058.jpg",@"title":@"乔什·哈奈特"},@{@"img":@"http://image11.m1905.cn/uploadfile/2012/1228/thumb_1_300_410_20121228010753939.jpg",@"title":@"斯科特·伊斯特伍德"}];
    pandaItem17.PandaMoview_intrduce = @"翻拍自2004年的法国电影《运钞车》，讲述冷酷、神秘的H在一家运钞车公司工作，每周运送数百万美元运往来洛杉矶。";
    pandaItem17.PandaMoview_soureNums = 31784;
    pandaItem17.PandaMoview_DBNums = 6.9;
    pandaItem17.PandaMovie_ID = 17;
    pandaItem17.PandaMoview_tagOne= @"动作";
    pandaItem17.PandaMoview_tagtwo = @"犯罪";
    pandaItem17.time = @"2021-05-07(美国)";
    pandaItem17.Top_filmType = 2;
    [tempArr addObject:pandaItem17];
    
    
    PandaMovieModel * pandaItem18 = [[PandaMovieModel alloc]init];
    pandaItem18.iswantWatching = NO;
    pandaItem18.watchingNum = @"1.05亿";
    pandaItem18.shangyinNum = 21;
    pandaItem18.total_Num = 3;
    pandaItem18.pandaMoiveThuburl = @"https://img1.doubanio.com/view/photo/m/public/p2508477629.jpg";
    pandaItem18.PandaMoviewName = @"窗里的女人";
    pandaItem18.PandaMoviewengishName  =@"The Woman in the Window ";
    pandaItem18.PandaMoviewType = @"悬疑 剧情 犯罪";
    pandaItem18.PandaMoviewArtiss = @"艾米·亚当斯/朱丽安·摩尔/加里·奥德曼";
    pandaItem18.PandaMoviewstar_five =0.7;
    pandaItem18.PandaMoviewstar_foure =0.3;
    pandaItem18.PandaMoviewstar_three =0.2;
    pandaItem18.PandaMoviewstar_two =0.1;
    pandaItem18.PandaMoviewstar_one =0.2;
    pandaItem18.PandaMoview_isCollected = NO;
    pandaItem18.PandaMoview_listArr = @[@{@"img":@"http://image13.m1905.cn/uploadfile/2014/1118/thumb_1_300_410_20141118091813643088.jpg",@"title":@"艾米·亚当斯"},@{@"img":@"http://image11.m1905.cn/uploadfile/2015/0106/thumb_1_300_410_20150106035608207551.jpg",@"title":@"朱丽安·摩尔"},@{@"img":@"http://image14.m1905.cn/uploadfile/2013/1020/thumb_1_300_410_20131020085759858.jpg",@"title":@"加里·奥德曼"}];
    pandaItem18.PandaMoview_intrduce = @"影片根据A.J. Finn创作的同名畅销小说改编。故事围绕安娜·福克斯(亚当斯饰)展开，她每日躲在自己家中，暗中窥视领居们的一举一动，而当她注意到看似完美的罗素一家时，未知和危险也将到来。";
    pandaItem18.PandaMoview_soureNums = 4823;
    pandaItem18.PandaMoview_DBNums = 7.6;
    pandaItem18.PandaMovie_ID = 18;
    pandaItem18.PandaMoview_tagOne= @"悬疑";
    pandaItem18.PandaMoview_tagtwo = @"剧情";
    pandaItem18.time = @"2021-05-14(美国)";
    pandaItem18.Top_filmType = 2;
    [tempArr addObject:pandaItem18];

    
    
    PandaMovieModel * pandaItem19 = [[PandaMovieModel alloc]init];
    pandaItem19.iswantWatching = NO;
    pandaItem19.watchingNum = @"1.04亿";
    pandaItem19.shangyinNum = 12;
    pandaItem19.total_Num = 3;
    pandaItem19.pandaMoiveThuburl = @"https://img2.doubanio.com/view/photo/m/public/p2622183693.jpg";
    pandaItem19.PandaMoviewName = @"侏罗纪世界3：统治";
    pandaItem19.PandaMoviewengishName  =@"Jurassic World: Dominion ";
    pandaItem19.PandaMoviewType = @"动作 科幻 冒险";
    pandaItem19.PandaMoviewArtiss = @"劳拉·邓恩/布莱斯·达拉斯·霍华德/克里斯·帕拉特";
    pandaItem19.PandaMoviewstar_five =0.4;
    pandaItem19.PandaMoviewstar_foure =0.6;
    pandaItem19.PandaMoviewstar_three =0.1;
    pandaItem19.PandaMoviewstar_two =0.1;
    pandaItem19.PandaMoviewstar_one =0.2;
    pandaItem19.PandaMoview_isCollected = NO;
    pandaItem19.PandaMoview_listArr = @[@{@"img":@"http://image11.m1905.cn/mdb/uploadfile/2020/0205/thumb_1_300_410_20200205031333334506.jpg",@"title":@"劳拉·邓恩"},@{@"img":@"http://image14.m1905.cn/uploadfile/2013/0329/thumb_1_168_230_20130329054025786.jpg",@"title":@"布莱斯·达拉斯·霍华德"},@{@"img":@"http://image13.m1905.cn/uploadfile/2014/1120/thumb_1_300_410_20141120095911309352.jpg",@"title":@"克里斯·帕拉特"}];
    pandaItem19.PandaMoview_intrduce = @"《侏罗纪世界3：统治》是环球影业出品的《侏罗纪世界》系列科幻冒险电影第三集，将于2022年6月10上映。 ";
    pandaItem19.PandaMoview_soureNums = 42378;
    pandaItem19.PandaMoview_DBNums = 8.7;
    pandaItem19.PandaMovie_ID = 19;
    pandaItem19.PandaMoview_tagOne= @"动作";
    pandaItem19.PandaMoview_tagtwo = @"科幻";
    pandaItem19.time = @"2021-06-11(美国)     ";
    pandaItem19.Top_filmType = 2;
    [tempArr addObject:pandaItem19];
    
    
    PandaMovieModel * pandaItem20 = [[PandaMovieModel alloc]init];
    pandaItem20.iswantWatching = NO;
    pandaItem20.watchingNum = @"1.27亿";
    pandaItem20.shangyinNum = 25;
    pandaItem20.total_Num = 3;
    pandaItem20.pandaMoiveThuburl = @"https://img1.doubanio.com/view/photo/l/public/p2636616268.jpg";
    pandaItem20.PandaMoviewName = @"黑寡妇";
    pandaItem20.PandaMoviewengishName  =@"The Black Widow";
    pandaItem20.PandaMoviewType = @"动作 科幻 冒险";
    pandaItem20.PandaMoviewArtiss = @"斯嘉丽·约翰逊/弗洛伦斯·皮尤/蕾切尔·薇兹";
    pandaItem20.PandaMoviewstar_five =0.8;
    pandaItem20.PandaMoviewstar_foure =0.4;
    pandaItem20.PandaMoviewstar_three =0.3;
    pandaItem20.PandaMoviewstar_two =0.2;
    pandaItem20.PandaMoviewstar_one =0.1;
    pandaItem20.PandaMoview_isCollected = NO;
    pandaItem20.PandaMoview_listArr = @[@{@"img":@"http://image13.m1905.cn/uploadfile/2015/0127/thumb_1_300_410_20150127083959954302.jpg",@"title":@"斯嘉丽·约翰逊"},@{@"img":@"http://image13.m1905.cn/mdb/uploadfile/2018/0307/thumb_1_300_410_20180307100548360699.jpg",@"title":@"弗洛伦斯·皮尤"},@{@"img":@"http://image14.m1905.cn/uploadfile/2013/0305/thumb_1_300_410_20130305041450487.jpg",@"title":@"蕾切尔·薇兹"}];
    pandaItem20.PandaMoview_intrduce = @"一部充满动作戏的间谍惊悚片。娜塔莎·罗曼诺夫/黑寡妇遭遇与她的过去相关的一场危险阴谋，将直面自己那些更为黑暗的经历。一股不惜一切要击倒她的力量袭来，娜塔莎必须面对自己在成为复仇者的很久之前那作为间谍的过往，和曾远离的破碎关系。";
    pandaItem20.PandaMoview_soureNums = 57892;
    pandaItem20.PandaMoview_DBNums = 7.2;
    pandaItem20.PandaMovie_ID = 20;
    pandaItem20.PandaMoview_tagOne= @"动作";
    pandaItem20.PandaMoview_tagtwo = @"科幻";
    pandaItem20.time = @"2021-07-09(美国)";
    pandaItem20.Top_filmType = 2;
    [tempArr addObject:pandaItem20];
    
    
    PandaMovieModel * pandaItem21 = [[PandaMovieModel alloc]init];
    pandaItem21.iswantWatching = NO;
    pandaItem21.watchingNum = @"1.36亿";
    pandaItem21.shangyinNum = 65;
    pandaItem21.total_Num = 3;
    pandaItem21.pandaMoiveThuburl = @"https://img9.doubanio.com/view/photo/l/public/p2644292175.jpg";
    pandaItem21.PandaMoviewName = @"电锯惊魂9：螺旋";
    pandaItem21.PandaMoviewengishName  =@"Spiral: From the Book of Saw ";
    pandaItem21.PandaMoviewType = @"恐怖";
    pandaItem21.PandaMoviewArtiss = @"塞缪尔·杰克逊/马利索·妮可/麦克思·明格拉";
    pandaItem21.PandaMoviewstar_five =0.5;
    pandaItem21.PandaMoviewstar_foure =0.4;
    pandaItem21.PandaMoviewstar_three =0.3;
    pandaItem21.PandaMoviewstar_two =0.2;
    pandaItem21.PandaMoviewstar_one =0.1;
    pandaItem21.PandaMoview_isCollected = NO;
    pandaItem21.PandaMoview_listArr = @[@{@"img":@"http://image13.m1905.cn/uploadfile/2012/1225/thumb_1_300_410_20121225034212892.jpg",@"title":@"塞缪尔·杰克逊"},@{@"img":@"http://image11.m1905.cn/uploadfile/2012/1102/thumb_1_300_410_20121102013858274.jpg",@"title":@"马利索·妮可"},@{@"img":@"http://image14.m1905.cn/uploadfile/2013/0321/thumb_1_300_410_20130321020520872.jpg",@"title":@"麦克思·明格拉"}];
    pandaItem21.PandaMoview_intrduce = @"狮门影业重启开启了温子仁职业生涯的《电锯惊魂》系列。剧本基于克里斯·洛克构思的一个故事，由皮特·古德芬格(《电锯惊魂8：竖锯》)、乔什·斯托尔伯格(《食人鱼3D》)撰写剧本。执导了《电锯惊魂》系列三部影片的达伦·林恩·鲍斯回归执导。";
    pandaItem21.PandaMoview_soureNums = 57892;
    pandaItem21.PandaMoview_DBNums = 8.9;
    pandaItem21.PandaMovie_ID = 21;
    pandaItem21.PandaMoview_tagOne= @"恐怖";
    pandaItem21.PandaMoview_tagtwo = @"";
    pandaItem21.time = @"2021-05-14(美国)";
    pandaItem21.Top_filmType = 2;
    [tempArr addObject:pandaItem21];
    
    
    PandaMovieModel * pandaItem22 = [[PandaMovieModel alloc]init];
    pandaItem22.iswantWatching = NO;
    pandaItem22.watchingNum = @"1.26亿";
    pandaItem22.shangyinNum = 65;
    pandaItem22.total_Num = 4;
    pandaItem22.pandaMoiveThuburl = @"https://img1.doubanio.com/view/photo/m/public/p2610031548.jpg";
    pandaItem22.PandaMoviewName = @"007：无暇赴死";
    pandaItem22.PandaMoviewengishName  =@"Bond 25";
    pandaItem22.PandaMoviewType = @"动作 惊悚";
    pandaItem22.PandaMoviewArtiss = @"丹尼尔·克雷格/蕾雅·赛杜/拉米·马雷克/本·卫肖";
    pandaItem22.PandaMoviewstar_five =0.7;
    pandaItem22.PandaMoviewstar_foure =0.3;
    pandaItem22.PandaMoviewstar_three =0.6;
    pandaItem22.PandaMoviewstar_two =0.1;
    pandaItem22.PandaMoviewstar_one =0.1;
    pandaItem22.PandaMoview_isCollected = NO;
    pandaItem22.PandaMoview_listArr = @[@{@"img":@"http://image14.m1905.cn/uploadfile/2013/0122/thumb_1_300_410_20130122110606301.jpg",@"title":@"丹尼尔·克雷格"},@{@"img":@"http://image14.m1905.cn/uploadfile/2014/0905/thumb_1_300_410_20140905095626569818.jpg",@"title":@"蕾雅·赛杜"},@{@"img":@"http://image11.m1905.cn/mdb/uploadfile/2019/0218/thumb_1_300_410_20190218035837311784.jpg",@"title":@"拉米·马雷克"},@{@"img":@"http://image14.m1905.cn/uploadfile/2014/1201/thumb_1_300_410_20141201012520228906.jpg",@"title":@"本·卫肖"}];
    pandaItem22.PandaMoview_intrduce = @"这两部影片或将成为007历史上第一次“背靠背拍摄”的影片，最早将在明年秋天开拍，其中第24部007电影计划在2014年秋上映，丹尼尔·克雷格（Daniel Craig）将继续扮演邦德。";
    pandaItem22.PandaMoview_soureNums = 57892;
    pandaItem22.PandaMoview_DBNums = 7.4;
    pandaItem22.PandaMovie_ID = 22;
    pandaItem22.PandaMoview_tagOne= @"动作";
    pandaItem22.PandaMoview_tagtwo = @"惊悚";
    pandaItem22.time = @"2021-10-08(美国)";
    pandaItem22.Top_filmType = 2;
    [tempArr addObject:pandaItem22];
    

    BOOL PandaMoveiStaue = [[NSUserDefaults standardUserDefaults] boolForKey:@"PandaHomeMovie"];
    if (PandaMoveiStaue == NO) {
    BOOL isSuccced =     [WHC_ModelSqlite inserts:tempArr.copy];
        [[NSUserDefaults standardUserDefaults] setBool:isSuccced forKey:@"PandaHomeMovie"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
  
}
+(void)PandaMovieHotComentCofnigs{
    NSMutableArray * tempArr= [NSMutableArray array];
    [tempArr addObject:[self PandaMovieHotComentCofnigsWithImgUrl:@"https://pic1.zhimg.com/v2-bb3442e46ea745f3725e171f05e2f8de_l.jpg?source=1940ef5c" FilmName:@"佛亦有刀" mytime:@"04-18 12:00:21" MyFilmID:0 MyComentID:0 CellHeight:0 myContent:@"千万别带脑袋去，有双眼睛和耳朵就够了。三四十块去消磨时间还是可以看看的。" strarNum:4]];

    [tempArr addObject:[self PandaMovieHotComentCofnigsWithImgUrl:@"https://pic1.zhimg.com/v2-41928437e4a98c63d5583bfa07ecbd18_l.jpg?source=1940ef5c" FilmName:@"馬超" mytime:@"04-18 16:12:21" MyFilmID:0 MyComentID:1 CellHeight:0 myContent:@"我的青春啊~" strarNum:3]];

        [tempArr addObject:[self PandaMovieHotComentCofnigsWithImgUrl:@"https://img3.doubanio.com/icon/up87002341-1.jpg" FilmName:@"越来越勇敢了" mytime:@"04-22 13:21:51" MyFilmID:1 MyComentID:2 CellHeight:0 myContent:@"只想知道最后有没有成为牺牲自我的伏地魔" strarNum:4]];


        [tempArr addObject:[self PandaMovieHotComentCofnigsWithImgUrl:@"https://img9.doubanio.com/icon/u209329311-6.jpg" FilmName:@"再造一个新宇宙" mytime:@"04-18 10:26:32" MyFilmID:1 MyComentID:3 CellHeight:0 myContent:@"这是一部现实题材的亲情电影，生长在重男轻女的家庭，一个追求独立自我、拼尽全力想挣脱束缚的姐姐，在面对才四五岁的“拖油瓶”弟弟时，展现出内心矛盾与拉扯，自己的未来与亲情的纽带，都十分复杂和深刻。" strarNum:3]];

    
        [tempArr addObject:[self PandaMovieHotComentCofnigsWithImgUrl:@"https://img2.doubanio.com/icon/u207606558-3.jpg" FilmName:@"筱兰的甜甜 " mytime:@"04-14 12:15:51" MyFilmID:2 MyComentID:4 CellHeight:0 myContent:@"《指环王2：双塔奇兵》在很好的继承了首部风格的基础上，更为庞大的史诗观，数条线索多线发展的电影格局在导演之手游刃有余，如果说《指环王》的首秀是开篇，终章是特效的盛宴，那么承上启下的《双塔奇兵》则是构筑了最为精彩的剧情。 " strarNum:5]];

    
        [tempArr addObject:[self PandaMovieHotComentCofnigsWithImgUrl:@"https://pic2.zhimg.com/v2-da62d206a67afeaa9b5f8ea9da2ba3c5_l.jpg?source=1940ef5c" FilmName:@"耳东骏" mytime:@"04-15 16:33:24" MyFilmID:2 MyComentID:5 CellHeight:0 myContent:@"Jackson创造的中土世界以一种近乎真实的存在呈现在大家面前，多线的叙事利用传统蒙太奇的剪辑使每条主线的转换异常顺畅，本集中人物维度进一步丰满，一再被蛊惑心志的Frodo，严重分裂的咕噜，还有伟大的园丁Sam，他如是说There's" strarNum:3]];

    
        [tempArr addObject:[self PandaMovieHotComentCofnigsWithImgUrl:@"https://pic4.zhimg.com/v2-a640e959b70077409299141a4b82df28_l.jpg?source=1940ef5c" FilmName:@"零度向前" mytime:@"04-21 18:24:11" MyFilmID:3 MyComentID:6 CellHeight:0 myContent:@"柯学已经下马，八百里狙击赤井秀一永远的神！柯学已经不足，全能大百科宫野志保永远的神！柯学已经不足，最强大脑的羽田秀吉永远的神！柯学已经不足，初中身体干翻秀一的玛丽永远的神！" strarNum:3]];

    
        [tempArr addObject:[self PandaMovieHotComentCofnigsWithImgUrl:@"https://pic4.zhimg.com/v2-b7390daac1d6db4e447d2e57f9920237_l.jpg?source=1940ef5c" FilmName:@"令狐怕光" mytime:@"04-19 15:26:51" MyFilmID:4 MyComentID:7 CellHeight:0 myContent:@"那就是周显扬导演、杜致朗编剧、王凯、杨祐宁、古天乐、古力娜扎、韩庚等主演的《真三国无双》。" strarNum:4]];

        [tempArr addObject:[self PandaMovieHotComentCofnigsWithImgUrl:@"https://pic1.zhimg.com/v2-5452844d19f796cccfcbb1be0a4f24f8_l.jpg?source=1940ef5c" FilmName:@"苏沉船" mytime:@"04-20 10:16:36" MyFilmID:4 MyComentID:8 CellHeight:0 myContent:@"看到周显扬我快笑死了，他拍的黄飞鸿英雄有梦是部无法形容的烂片……里面的台词确实有三国无双的中二风……" strarNum:3]];
    
        [tempArr addObject:[self PandaMovieHotComentCofnigsWithImgUrl:@"https://pic1.zhimg.com/v2-4913281c3644c45ff54e6b0c440cf031_l.jpg?source=1940ef5c" FilmName:@"旧小鸽" mytime:@"04-16 12:24:17" MyFilmID:5 MyComentID:9 CellHeight:0 myContent:@"我觉得这部电影不应该叫《八月未央》，应该叫《小乔与未央》、或者叫《一个资深渣男引发的血案》。本年度最佳雷剧奖非它莫属。" strarNum:5]];
    
        [tempArr addObject:[self PandaMovieHotComentCofnigsWithImgUrl:@"https://pic1.zhimg.com/v2-6d2f78388f2ec7e4e7406e92db700b8c_l.jpg?source=1940ef5c" FilmName:@"表姐电影" mytime:@"04-18 11:25:25" MyFilmID:5 MyComentID:10 CellHeight:0 myContent:@"这烂片我看吐了......朋友们，周末我去看了钟楚曦、罗晋和谭松韵主演的新片《八月未央》。" strarNum:4]];
    
    
        [tempArr addObject:[self PandaMovieHotComentCofnigsWithImgUrl:@"https://pic4.zhimg.com/v2-4bcc284d174a3af92f619a2c3613a452_l.jpg?source=1940ef5c" FilmName:@"鹅鹅鹅" mytime:@"04-19 12:11:36" MyFilmID:6 MyComentID:11 CellHeight:0 myContent:@"疤面给人一种惊悚的感觉，其实这种可怖、迷幻的具象化，恰恰是梦的特征，因为梦就是跨越时空的，也是超越现实的。" strarNum:3]];
    
    
    
        [tempArr addObject:[self PandaMovieHotComentCofnigsWithImgUrl:@"https://pic4.zhimg.com/v2-f46b8aa0f6bc647241570968b41f86f9_l.jpg?source=1940ef5c" FilmName:@"磕学家脆脆冰" mytime:@"04-22 10:25:31" MyFilmID:6 MyComentID:12 CellHeight:0 myContent:@"这部电影故事内核极其NB，电影想象力拉满，还引入了关于精神分析、心理学、讲了一个关于【梦中取物】的奇幻故事：" strarNum:4]];


    
    
       [tempArr addObject:[self PandaMovieHotComentCofnigsWithImgUrl:@"https://pic4.zhimg.com/v2-26467f46da7fd386d52b9a01dea0fc3b_l.jpg?source=1940ef5c" FilmName:@"大狸" mytime:@"04-20 12:11:36" MyFilmID:7 MyComentID:13 CellHeight:0 myContent:@"自《大圣归来》之后观众对孙悟空，哪吒等神话人物IP的审美疲劳已经到了一个即将爆发的点，但是其实《西游记之再世妖王》是继《大圣归来》之后，这五年里第二部以西游主题，孙悟空为主角的登上大荧幕的动画电影，也就是说，这些年动画电影并没有太多用西游IP来讲故事的，其他真人电影与网剧倒是有不少用了西游IP，所以才给观众留下了此IP出现如此频繁的印象。" strarNum:5]];

        [tempArr addObject:[self PandaMovieHotComentCofnigsWithImgUrl:@"https://pic2.zhimg.com/v2-08ae149e7b1126dabd16efeb04ed3e10_l.jpg?source=1940ef5c" FilmName:@"杨建东" mytime:@"04-20 16:21:18" MyFilmID:7 MyComentID:14 CellHeight:0 myContent:@"前面孙悟空大闹五庄观的部分，因为前面太过遵守原著，反倒显得孙悟空有点蛮不讲理，作为一部商业电影，我觉得改编不够巧妙" strarNum:4]];
    
    
    [tempArr addObject:[self PandaMovieHotComentCofnigsWithImgUrl:@"https://pic1.zhimg.com/v2-72c70b3d202f6508138766ab6ad4a080_l.jpg?source=1940ef5c" FilmName:@"泰勒太垃" mytime:@"04-21 15:17:21" MyFilmID:8 MyComentID:15 CellHeight:0 myContent:@"一艘被当时誉为“世上最豪华”的邮轮，泰坦尼克号，于1912年4月10日从英国南安普顿出发驶往美国纽约。所有人都说它“永不沉没”，然而它却永远的沉入在北大西洋冰冷的深海里，1517具亡灵随之而去..." strarNum:3]];

    
        [tempArr addObject:[self PandaMovieHotComentCofnigsWithImgUrl:@"https://pic1.zhimg.com/v2-642b591aa4c9d5d00ef8f77bb856bfeb_l.jpg?source=1940ef5c" FilmName:@"导演罗飞" mytime:@"04-21 17:36:19" MyFilmID:8 MyComentID:16 CellHeight:0 myContent:@"Almost six years ago, my friend Steven Schwankert came to me and suggested that we make a documentary about the Chinese survivors of Titanic. “There were Chinese people on Titanic?!” was my immediate reaction. It’s a sentence I’ve heard a lot in the years since, pretty much every time we have told people about the film we are working on. And it is the fact that no one seemed to know about the Chinese on board the most famous shipwreck of all time that spurred us on to finish what at times seemed like an impossible task." strarNum:4]];

        [tempArr addObject:[self PandaMovieHotComentCofnigsWithImgUrl:@"https://pic4.zhimg.com/v2-5d2d11b356a351dbeabedb44e19744c1_l.jpg?source=1940ef5c" FilmName:@"河东" mytime:@"04-21 18:14:21" MyFilmID:9 MyComentID:17 CellHeight:0 myContent:@"故事围绕冰雪世界里一场精彩的雪橇比赛展开，意外的失败发掘出了赛事背后的黑幕，弄虚作假、偷奸耍滑注定遭人唾弃，团结友爱、齐心协作才是正道。影片没有刻意说教，在诙谐幽默的气氛中让人不知不觉接受为人处世的正确态度，孩子的三观教育需要从小培养，建议家长带着小孩子一起来观看。充满正能量的片子还是太少了，这一部弥足珍贵！" strarNum:4]];
    
        [tempArr addObject:[self PandaMovieHotComentCofnigsWithImgUrl:@"https://pic1.zhimg.com/v2-be6706884851de64f5f1c795018ebb88_l.jpg?source=1940ef5c" FilmName:@"舒心酱" mytime:@"04-24 12:56:21" MyFilmID:13 MyComentID:18 CellHeight:0 myContent:@"空王冠”之后，多米尼克·库克导演和本尼迪克特·康伯巴奇又合作了一部《信使》，不同于此前莎翁作品改编的理查三世、亨利六世等遥远故事，《信使》聚焦的是上个世纪中期的一场危机。" strarNum:5]];
    
        [tempArr addObject:[self PandaMovieHotComentCofnigsWithImgUrl:@"https://pic2.zhimg.com/v2-f84f12436f2a8d8999c5757e5c07e210_l.jpg?source=1940ef5c" FilmName:@"Atlantis" mytime:@"04-21 15:21:56" MyFilmID:15 MyComentID:19 CellHeight:0 myContent:@"影片不是在讨论技术问题，而是创造这样情形来探讨人性问题，如果只能用个体的生命来保全群体的安危，那也许我们唯一能接受的就是这种在一同努力后最终不得已的个人牺牲，且必须是个体心甘情愿的付出，这是人性的最低底线，而群体中有没有甘愿牺牲的人，则就是这个群体的命运所在了。" strarNum:5]];


    
//
//    [tempArr addObject:[self PandaMovieHotComentCofnigsWithImgUrl:@"" FilmName:@"" mytime:@"" MyFilmID:0 MyComentID:0 CellHeight:0 myContent:@""]];
    BOOL filmComentStatus = [[NSUserDefaults standardUserDefaults] boolForKey:@"FilmCpmentAdd"];
    if (filmComentStatus == NO) {
     BOOL isSucded =    [WHC_ModelSqlite inserts:tempArr.copy];
        [[NSUserDefaults standardUserDefaults] setBool:isSucded forKey:@"FilmCpmentAdd"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
   
}

+(void)PandaZoneModelConfig{
    NSMutableArray * tempArr = [NSMutableArray array];
    PandaZoneModel * zoneModel = [[PandaZoneModel alloc]init];
    zoneModel.imgurl = @"https://img1.doubanio.com/icon/u58507059-17.jpg";
    zoneModel.username = @"Moonymoreo ";
    zoneModel.time = @"2021-05-19 21:31:26";
    zoneModel.CellHeight =  RealWidth(0);
    zoneModel.title = @"“Ultimately, it is the desire, not the desired, that we love.” ― Nietzsche";
    zoneModel.content = @"娄烨民国三部曲都扣着谍战这个主题，也不知道是不是巧合。开场前还在想，我大概是少数几个03年也在戛纳《紫蝴蝶》首映现场的人。当年确实喜欢不起来《紫蝴蝶》，今非昔比，倒是真的沉醉在了娄式氤氲感里。Saturday Fiction，点其实在“fiction”。舞台剧也好，黑白影像也好，戏中戏也罢，其实都是虚实角力两种运动情态，但情态背后欲望是实体，也是娄烨电影里一切动作原发力。恐怕称之为近几年最美的华语电影也不为过。希望《人的境遇》上映时候，还能碰巧在首映现场。";
    zoneModel.imgArr = @[@"https://img9.doubanio.com/view/photo/l/public/p2513678635.jpg",@"https://img1.doubanio.com/view/photo/l/public/p2512165339.jpg"];
    zoneModel.isZan = YES;
    zoneModel.PandaZoneID = 0;
    zoneModel.zanNum = 10;
    [tempArr addObject:zoneModel];
    
    
    
    
    PandaZoneModel * zoneModel1 = [[PandaZoneModel alloc]init];
    zoneModel1.imgurl = @"https://img2.doubanio.com/icon/u219157276-2.jpg";
    zoneModel1.username = @"胖又 ";
    zoneModel1.time = @"2021-05-19 23:12:21";
    zoneModel1.CellHeight =  RealWidth(0);
    zoneModel1.title = @"《亲爱的同志》观后感。当“信仰”与现实背道而驰，该何去何从？";
    zoneModel1.content = @"电影将政治冷血无情的一面展现的淋漓尽致，同时也刻画出个人意志被集体意识裹挟其中引起的矛盾、摇摆、麻木…每个人不尽相同。不谈论政治，只想探讨，当“信仰”与现实背道而驰，我们是否有勇气对信仰或强权提出质疑，我们该何去何从？";
    zoneModel1.imgArr = @[@"https://img2.doubanio.com/view/group_topic/l/public/p407158373.jpg",@"https://img1.doubanio.com/view/group_topic/l/public/p407158379.jpg",@"https://img3.doubanio.com/view/group_topic/l/public/p407158371.jpg",@"https://img1.doubanio.com/view/group_topic/l/public/p407158378.jpg"];
    zoneModel1.isZan = NO;
    zoneModel1.PandaZoneID = 1;
    zoneModel1.zanNum = 3;
    [tempArr addObject:zoneModel1];
    
    
    
    PandaZoneModel * zoneModel2 = [[PandaZoneModel alloc]init];
    zoneModel2.imgurl = @"https://img1.doubanio.com/icon/u201460252-8.jpg";
    zoneModel2.username = @"霅衎";
    zoneModel2.time = @"2021-05-19 17:00:34";
    zoneModel2.CellHeight =  RealWidth(0);
    zoneModel2.title = @"《晴雅集》太好看了有木有";
    zoneModel2.content = @"看《晴雅集》之前，我真的get不到dl的颜，看了这部电影之后，不说粉了，反正不是无感了。但是最关键的还是这部电影拍的太好看了！不知道大家有木有同感？相对于《侍神令》来说简直甩出十万八千里去。当然，各位不要说我捧一踩一哈，只是属于善意的比较，郭敬明不愧是作家，审美就是有格调。《晴雅集》不仅画面唯美，故事情节也很吸引人，演员的表演也很饱满，有张力！被禁的有点可惜。";
    zoneModel2.imgArr = @[@"https://img2.doubanio.com/view/photo/l/public/p2623437312.jpg",@"https://img1.doubanio.com/view/photo/l/public/p2623437308.jpg",@"https://img1.doubanio.com/view/photo/l/public/p2623437307.jpg"];
    zoneModel2.isZan = NO;
    zoneModel2.PandaZoneID = 2;
    zoneModel2.zanNum = 5;
    [tempArr addObject:zoneModel2];
    
    
    PandaZoneModel * zoneModel3 = [[PandaZoneModel alloc]init];
    zoneModel3.imgurl = @"https://img3.doubanio.com/icon/u211339794-1.jpg";
    zoneModel3.username = @"自由社";
    zoneModel3.time = @"2021-05-18 19:38:06";
    zoneModel3.CellHeight =  RealWidth(0);
    zoneModel3.title = @"今天给大家分享的导演叫韦斯·安德森";
    zoneModel3.content = @"说实在我只看过他的四部电影，不过看完之后我的印象都很深刻。我小时候很喜欢读罗尔德·达尔写的故事，比如说查理和巧克力工厂或者是世界冠军丹尼。当然，还有了不起的狐狸爸爸。这本书被安德森拍成了一部定格动画，也是我看的第一部安德森的电影。我当时看的是中文配音的，所以我对这个电影没有那么多好感。我记得他对原作做了许多的改动，我当时不太喜欢这一点（我当时也就十岁）。不过，我记得他拍出的画面都很不错，让人看的很舒服。";
    zoneModel3.imgArr = @[@"https://img3.doubanio.com/view/group_topic/l/public/p286112411.jpg",@"https://img1.doubanio.com/view/group_topic/l/public/p286112418.jpg",@"https://img1.doubanio.com/view/group_topic/l/public/p286112417.jpg",@"https://img2.doubanio.com/view/group_topic/l/public/p286112433.jpg",@"https://img2.doubanio.com/view/group_topic/l/public/p286112432.jpg"];
    zoneModel3.isZan = NO;
    zoneModel3.PandaZoneID = 3;
    zoneModel3.zanNum = 4;
    [tempArr addObject:zoneModel3];
    
    
    
    
    PandaZoneModel * zoneModel4 = [[PandaZoneModel alloc]init];
    zoneModel4.imgurl = @"https://img2.doubanio.com/icon/u221013538-2.jpg";
    zoneModel4.username = @"Jerry^ ";
    zoneModel4.time = @"2021-05-15 10:34:49";
    zoneModel4.CellHeight =  RealWidth(0);
    zoneModel4.title = @"张子枫《我的姐姐》，揭开中国式家庭众生相";
    zoneModel4.content = @"电影《我的姐姐》由香港金像奖最佳编剧游晓颖操刀剧本、新生代女性导演殷若昕执导、金马奖最佳剪辑联手创作，打造出一个能够引发集体女性共振的故事。她们从家庭出发延展到职场、社会中，融合了中国式家庭情感，同时将目光聚焦在二胎家庭上，以姐姐安然的家庭为基底，用细腻的手法展现两代人对于家庭的观念的撕裂与融合。";
    zoneModel4.imgArr = @[@"https://img1.doubanio.com/view/group_topic/l/public/p421292817.jpg",@"https://img1.doubanio.com/view/group_topic/l/public/p421292889.jpg",@"https://img3.doubanio.com/view/group_topic/l/public/p421292890.jpg"];
    zoneModel4.isZan = NO;
    zoneModel4.PandaZoneID = 4;
    zoneModel4.zanNum = 6;
    [tempArr addObject:zoneModel4];
    
    
    PandaZoneModel * zoneModel5 = [[PandaZoneModel alloc]init];
    zoneModel5.imgurl = @"https://img2.doubanio.com/icon/u144668456-3.jpg";
    zoneModel5.username = @"苍山古井空对月";
    zoneModel5.time = @"2020-05-16  12:33:10";
    zoneModel5.CellHeight =  RealWidth(0);
    zoneModel5.title = @"西部片中的烟雾——《侠骨柔情》";
    zoneModel5.content = @"约翰.福特执导、1946年上映的西部片，粗犷之外还带点文艺。车掀起的烟尘——粗犷室内的烟雾——文艺气息";
    zoneModel5.imgArr = @[@"https://img1.doubanio.com/view/group_topic/l/public/p281082657.jpg",@"https://img9.doubanio.com/view/group_topic/l/public/p281083025.jpg",@"https://img1.doubanio.com/view/group_topic/l/public/p281083028.jpg"];
    zoneModel5.isZan = NO;
    zoneModel5.PandaZoneID = 5;
    zoneModel5.zanNum = 5;
    [tempArr addObject:zoneModel5];
    
    
    PandaZoneModel * zoneModel6 = [[PandaZoneModel alloc]init];
    zoneModel6.imgurl = @"https://img9.doubanio.com/icon/u202156656-54.jpg";
    zoneModel6.username = @"志摩美紀";
    zoneModel6.time = @"2021-05-14 07:03:28";
    zoneModel6.CellHeight =  RealWidth(0);
    zoneModel6.title = @"求文艺片艺术片导演推荐？！";
    zoneModel6.content = @"目前伍迪艾伦快刷完了，接下来准备刷伯格曼、费里尼、候麦、娄烨、李安等等，大家有类似的这种文艺性质的导演推荐吗？";
    zoneModel6.imgArr = @[@"https://img1.doubanio.com/view/group_topic/l/public/p352916267.jpg",@"https://img9.doubanio.com/view/group_topic/l/public/p352916255.jpg"];
    zoneModel6.isZan = NO;
    zoneModel6.PandaZoneID = 6;
    zoneModel6.zanNum = 5;
    [tempArr addObject:zoneModel6];
    
    
    PandaZoneModel * zoneModel7 = [[PandaZoneModel alloc]init];
    zoneModel7.imgurl = @"https://img3.doubanio.com/icon/u79540194-1.jpg";
    zoneModel7.username = @"每天一个白煮蛋";
    zoneModel7.time = @"2021-05-13 19:10:10";
    zoneModel7.CellHeight =  RealWidth(0);
    zoneModel7.title = @"《乌托邦》就…很特别";
    zoneModel7.content = @"多年前看的《乌托邦》，因为是在channel4，看之前就做好思想准备不会特别清淡，哇，果然是重口，串串香级别的。更印象深刻的是影像风格，说不上美，谈不上精致，可能导演追求漫画感，色彩饱和度特别高，还有大量的油画质感空镜头。一部电视剧能让人在影像风格上留下记忆点也是难得。当然最重要的是故事非常紧张刺激，人物还都不太正常，外加大量阴谋论、伦理道德的探讨，真的是好特别";
    zoneModel7.imgArr = @[@"https://img2.doubanio.com/view/group_topic/l/public/p442727563.jpg",@"https://img9.doubanio.com/view/group_topic/l/public/p442727565.jpg"];
    zoneModel7.isZan = NO;
    zoneModel7.PandaZoneID = 7;
    zoneModel7.zanNum = 5;
    [tempArr addObject:zoneModel7];
    
    
    BOOL isPanzone = [[NSUserDefaults standardUserDefaults] boolForKey:@"isPanzone"];
    if (isPanzone == NO) {
        BOOL  PandaZoneStatus = [WHC_ModelSqlite inserts:tempArr.copy];
        [[NSUserDefaults standardUserDefaults] setBool:PandaZoneStatus forKey:@"isPanzone"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}
+(void)PadaCatagoryweizhiModelConfig{
    NSMutableArray * PandaTempArr  =[NSMutableArray array];
    PadaCatagoryweizhiModel * pandaweizhiItem =[[PadaCatagoryweizhiModel alloc]init];
    pandaweizhiItem.coinNum = 4;
    pandaweizhiItem.ComentCoinNum =  6.7;
    pandaweizhiItem.isBaoming = YES;
    pandaweizhiItem.imgArrs = @[@"https://img2.doubanio.com/view/page_note/large/public/p106623281-3.jpg",@"https://img3.doubanio.com/view/page_note/large/public/p106623281-1.jpg",@"https://img2.doubanio.com/view/page_note/large/public/p106623281-2.jpg",@"https://img9.doubanio.com/view/page_note/large/public/p106623281-4.jpg"];
    pandaweizhiItem.FilmThubImgView = @"https://img3.doubanio.com/pview/event_poster/plarge/public/f14d5ac4ecb26ae.jpg";
    pandaweizhiItem.title = @"南京市京剧团出品 李卓群工作室作品 京剧《鉴证》";
    pandaweizhiItem.titleDesc =@"戏剧-戏曲";
    pandaweizhiItem.DetailDesc = @"京剧《鉴证》是2019年度南京艺术基金资助项目，由南京市京剧团出品，是南京市京剧团与北京京剧院建立战略合作关系后的首部创排剧目，更是李卓群工作室成立后的首部作品。李卓群导演潜心经年打磨剧本，参阅两百万字史料；著名作曲家谢振强、戏曲界造型“圣手”蓝玲、青年舞美设计任思远、旅美青年舞蹈家赵玺等，倾情加盟剧组创作团队；国家清史工程《清光绪帝死因研究》课题组主持人钟里满担任史学顾问；更有南北两地当红京剧偶像、梅花奖实力派戏骨联袂出演。";
    pandaweizhiItem.tageOne = @"鉴证";
    pandaweizhiItem.tagTwo = @"隆裕皇后";
    pandaweizhiItem.isStart = NO;
    pandaweizhiItem.isCollted = YES;
    pandaweizhiItem.colltecdNum =43;
    pandaweizhiItem.joinTime = @"05月20日 周六 19:30-21:30 至 05月232日 周日 19:30-21:30";
    pandaweizhiItem.playTime = @"05月22日 周六 19:30-21:30 至 05月23日 周日 19:30-21:30";
    pandaweizhiItem.loaction = @"北京市东城区王府井大街255号北京市百货大楼F8";
    pandaweizhiItem.phone = @"(010)65234366";
    pandaweizhiItem.LoactionID = 0;
    [PandaTempArr addObject:pandaweizhiItem];
    
    
    
    
    PadaCatagoryweizhiModel * pandaweizhiItem1 =[[PadaCatagoryweizhiModel alloc]init];
    pandaweizhiItem1.coinNum = 5;
    pandaweizhiItem1.ComentCoinNum =  7.3;
    pandaweizhiItem1.isBaoming = NO;
    pandaweizhiItem1.imgArrs = @[@"https://img1.doubanio.com/view/page_note/large/public/p93942947-7.jpg",@"https://img1.doubanio.com/view/page_note/large/public/p93942947-8.jpg",@"https://img1.doubanio.com/view/page_note/large/public/p93942947-9.jpg"];
    pandaweizhiItem1.FilmThubImgView = @"https://img1.doubanio.com/pview/event_poster/plarge/public/94a99db35e6b3bc.jpg";
    pandaweizhiItem1.title = @"A伙伴北京 | 每周认识新朋友，看看别人的世界";
    pandaweizhiItem1.titleDesc =@"聚会-交友";
    pandaweizhiItem1.DetailDesc = @"由于活动周期较长，活动场地不定，请微信联系 Ahuoban_bj 获取活动信息和活动报名途径微信搜索 A伙伴 公众号可看到往期活动回顾/小程序可看到近期活动安排";
    pandaweizhiItem1.tageOne = @"A伙伴";
    pandaweizhiItem1.tagTwo = @"交友";
    pandaweizhiItem1.isStart = NO;
    pandaweizhiItem1.isCollted = NO;
    pandaweizhiItem1.colltecdNum =21;
    pandaweizhiItem1.joinTime = @"5/20 10:30:00 至 6/30 12:00:00";
    pandaweizhiItem1.playTime = @"5/5 12:30:00 至 5/7 12:00:00";
    pandaweizhiItem1.loaction = @"北京市东城区香河园路1号当代MOMA北区T4座";
    pandaweizhiItem1.phone = @"(010)84388257";
    pandaweizhiItem1.LoactionID = 1;
    [PandaTempArr addObject:pandaweizhiItem1];
    
    
    
    PadaCatagoryweizhiModel * pandaweizhiItem2 =[[PadaCatagoryweizhiModel alloc]init];
    pandaweizhiItem2.ComentCoinNum =  6.8;
    pandaweizhiItem2.coinNum = 3;
    pandaweizhiItem2.isBaoming = NO;
    pandaweizhiItem2.imgArrs = @[@"https://img3.doubanio.com/view/page_note/large/public/p106155352-1.jpg",@"https://img2.doubanio.com/view/page_note/large/public/p106155352-2.jpg"];
    pandaweizhiItem2.FilmThubImgView = @"https://img9.doubanio.com/pview/event_poster/plarge/public/17c8028bfc05174.jpg";
    pandaweizhiItem2.title = @"上海话剧艺术中心 话剧《家客》";
    pandaweizhiItem2.titleDesc =@"戏剧-话剧";
    pandaweizhiItem2.DetailDesc = @"话剧《家客》用一种新的戏剧表达方式阐述老一辈知识分子面对当下快速发展的社会的姿态和观点。怎样积极融入快速发展的社会步伐之中？如何看待历史长河中当下的社会现象？又怎样在这样的快速发展之中获得身份认同？全剧没有强烈的戏剧冲突，却用老年人特有的“絮絮叨叨”的方式，引出了众多当下的社会现象，并引导观众发出自己的声音。此乃写在开篇的“士不可以不弘毅，任重而道远”。全剧从老一辈知识分子的角度出发，对当下知识分子发出了有力的质问并进行了反思。";
    pandaweizhiItem2.tageOne = @"戏剧";
    pandaweizhiItem2.tagTwo = @"家客";
    pandaweizhiItem2.isStart = NO;
    pandaweizhiItem2.isCollted = NO;
    pandaweizhiItem2.colltecdNum =39;
    pandaweizhiItem2.joinTime = @"5/27 11:20:00 至 5/30 10:30:00";
    pandaweizhiItem2.playTime = @"6/1 10:00:00 至 6/1 24:00:00";
    pandaweizhiItem2.loaction = @"北京市通州区芙蓉园513号楼2至3层";
    pandaweizhiItem2.phone = @"(010)80850020";
    pandaweizhiItem2.LoactionID = 2;
    [PandaTempArr addObject:pandaweizhiItem2];
    
    
    
    PadaCatagoryweizhiModel * pandaweizhiItem3 =[[PadaCatagoryweizhiModel alloc]init];
    pandaweizhiItem3.ComentCoinNum =  8.4;
    pandaweizhiItem3.coinNum = 4;
    pandaweizhiItem3.isBaoming = NO;
    pandaweizhiItem3.imgArrs = @[@"https://img2.doubanio.com/view/page_note/large/public/p102226414-2.jpg"];
    pandaweizhiItem3.FilmThubImgView = @"https://img2.doubanio.com/pview/event_poster/plarge/public/aca913e49629063.jpg";
    pandaweizhiItem3.title = @"北京站 | 视觉剧场《气》之迈入多感官体验的新世界 | 2021暖春专场";
    pandaweizhiItem3.titleDesc =@"戏剧-舞剧";
    pandaweizhiItem3.DetailDesc = @"视觉剧场作品《气》取材自形声意一体的象形文字“氣”的概念与意象，亦由此延伸。气是中国传统哲学中一切实体的生命能量，也是使天地间事物流动变化的动力。该剧基于对“气”这一概念的认知，对剧场中的听觉、视觉、嗅觉进行重构。精微的动作、身体和物品互动形成的画面、材料在流动中发出的声音、蒸饭所散发的香气等多种元素相互配合，共同在空间中勾勒出一幅视听景观。";
    pandaweizhiItem3.tageOne = @"安妮宝贝";
    pandaweizhiItem3.tagTwo = @"";
    pandaweizhiItem3.isStart = NO;
    pandaweizhiItem3.isCollted = NO;
    pandaweizhiItem3.colltecdNum =14;
    pandaweizhiItem3.joinTime = @"5/1 12:00:00 至 5/5 12:00:00";
    pandaweizhiItem3.playTime = @"5/8 10:12:00 至 5/15 10:20:00";
    pandaweizhiItem3.loaction = @"北京市通州区芙蓉园513号楼2至3层";
    pandaweizhiItem3.phone = @"(010)80850020";
    pandaweizhiItem3.LoactionID = 3;
    [PandaTempArr addObject:pandaweizhiItem3];
    
    
    PadaCatagoryweizhiModel * pandaweizhiItem4 =[[PadaCatagoryweizhiModel alloc]init];
    pandaweizhiItem4.ComentCoinNum =  7.5;
    pandaweizhiItem4.coinNum = 5;
    pandaweizhiItem4.isBaoming = NO;
    pandaweizhiItem4.imgArrs = @[@"https://img3.doubanio.com/view/page_note/large/public/p106122976-1.jpg",@"https://img2.doubanio.com/view/page_note/large/public/p106122976-2.jpg",@"https://img2.doubanio.com/view/page_note/large/public/p106122976-3.jpg",@"https://img9.doubanio.com/view/page_note/large/public/p106122976-4.jpg"];
    pandaweizhiItem4.FilmThubImgView = @"https://img1.doubanio.com/pview/event_poster/plarge/public/16438cfbac21f07.jpg";
    pandaweizhiItem4.title = @"百老汇全球经典创意舞台秀《STOMP破铜烂铁》";
    pandaweizhiItem4.titleDesc = @"戏剧-其他";
    pandaweizhiItem4.DetailDesc = @"《STOMP破铜烂铁》融入打击乐、街舞、踢踏舞、和视觉喜剧等多重表演元素，是一场放眼全球仍堪称独一无二的顶级舞台秀形式。自1991年演出以来，STOMP破铜烂铁以其非凡的创造力、贴近生活的表演，诙谐幽默又让人血脉贲张的表演，一场场引起现场观众燃情投入。虽历经27年，仍不断创新改良，成为在百老汇和伦敦西区常年驻演的传奇演出。";
    pandaweizhiItem4.tageOne = @"百老汇";
    pandaweizhiItem4.tagTwo = @"";
    pandaweizhiItem4.isStart = NO;
    pandaweizhiItem4.isCollted = NO;
    pandaweizhiItem4.colltecdNum =45;
    pandaweizhiItem4.joinTime = @"5/1 12:00:00 至 5/5 12:00:00";
    pandaweizhiItem4.playTime = @"5/10 12:00:00 至 5/12 112:30:00";
    pandaweizhiItem4.loaction = @"北京市通州区西海子西塔胡同1号";
    pandaweizhiItem4.phone = @"(010)80850020";
    pandaweizhiItem4.LoactionID = 4;
    [PandaTempArr addObject:pandaweizhiItem4];
    
    BOOL isLoactionModel  = [[NSUserDefaults standardUserDefaults] boolForKey:@"LoactionModel"];
    if (isLoactionModel == NO) {
        BOOL LoactionModel =  [WHC_ModelSqlite inserts:PandaTempArr.copy];
        [[NSUserDefaults standardUserDefaults] setBool:LoactionModel forKey:@"LoactionModel"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}
+(void)PandaComentListModelConfig{
    NSMutableArray * PadanComeTempArr = [NSMutableArray array];
    PandaComentListModel  * pandaModel = [[PandaComentListModel alloc]init];
    pandaModel.imgurl = @"https://img1.doubanio.com/icon/u2788361-38.jpg";
    pandaModel.name = @"马博通";
    pandaModel.time = @"2021-05-20 12:12:43";
    pandaModel.content =@"说起娄烨，不是资深的影迷应该不知道这是谁，送外卖的？艺术家？还是某上市公司老板？不，他是导演。拍的作品呢，被称为文艺青年的圣经---《苏州河》，没听过！导致邓超和郝蕾分手的神作《yi和园》，还是没听过。为什么？因为他的所有作品，不是被禁，就是在被禁的路上。";
    pandaModel.ZoneID = 0 ;
    pandaModel.ComentID = 0;
    pandaModel.CellHeight =0;
    [PadanComeTempArr addObject:pandaModel];
    
    PandaComentListModel  * pandaModel1 = [[PandaComentListModel alloc]init];
    pandaModel1.imgurl = @"https://img2.doubanio.com/icon/u127975855-3.jpg";
    pandaModel1.name = @"范乐新";
    pandaModel1.time = @"2021-05-19 09:53:12";
    pandaModel1.content =@"说起最近爆火的网剧《隐秘的角落》，大家可能都不陌生，秦昊和张颂文是大大的火了一把，圈粉无数。但是很多人从不知道的是，这二人，曾是娄烨的御用男主和男配，纵观娄烨的电影，大部分都能从中发现其二人的身影。";
    pandaModel1.ZoneID = 0 ;
    pandaModel1.ComentID = 1;
    pandaModel1.CellHeight =0;
    [PadanComeTempArr addObject:pandaModel1];
    
    
    
    
    PandaComentListModel  * pandaModel2 = [[PandaComentListModel alloc]init];
    pandaModel2.imgurl = @"https://img2.doubanio.com/icon/u106289937-3.jpg";
    pandaModel2.name = @"索明芳";
    pandaModel2.time = @"2021-05-18 12:31:41";
    pandaModel2.content =@"影片中，自流血事件发生之始，Lyuda就一直在寻找女儿的下落。Lyuda心系女儿的安危，不惜以身犯险，奔波于修罗场、医院、停尸房、甚至未经许可的出城。最后，她绝望的在洗手间恸哭，她相信着的和拥有着的一切，都离她远去了。";
    pandaModel2.ZoneID = 1;
    pandaModel2.ComentID = 2;
    pandaModel2.CellHeight =0;
    [PadanComeTempArr addObject:pandaModel2];
    
    
    PandaComentListModel  * pandaModel3 = [[PandaComentListModel alloc]init];
    pandaModel3.imgurl = @"https://img3.doubanio.com/icon/u127659297-1.jpg";
    pandaModel3.name = @"Alonso_";
    pandaModel3.time = @"2021-05-18 12:31:41";
    pandaModel3.content =@"如今的我们，又应该信仰什么呢？信仰一位偶像，信仰一部文学作品，信仰一个政党，信仰一个社会，还是去信仰一个理论？说到底，我们是要从信仰中汲取光芒，从信仰中获得力量。";
    pandaModel3.ZoneID = 1;
    pandaModel3.ComentID = 3;
    pandaModel3.CellHeight =0;
    [PadanComeTempArr addObject:pandaModel3];
    
    
    PandaComentListModel  * pandaModel4 = [[PandaComentListModel alloc]init];
    pandaModel4.imgurl = @"https://img2.doubanio.com/icon/u179103151-3.jpg";
    pandaModel4.name = @"Simon";
    pandaModel4.time = @"2021-05-18 12:31:41";
    pandaModel4.content =@"在画面美感，配乐烘托，演员演技加持的条件下，为何一部电影依旧可以油腻之极，带着“我就是肉好看”的排面招摇过市？我们不仅反思，电影本身到底意味着什么？讲好一个故事，塑造一个人物，拥有完整的逻辑，以及表达正确的情感。如果依旧很难理解，可以去看看海贼王，如果还是接受不了决定太高深了的话，就去看看猫和老鼠吧。";
    pandaModel4.ZoneID = 2;
    pandaModel4.ComentID = 4;
    pandaModel4.CellHeight =0;
    [PadanComeTempArr addObject:pandaModel4];
    
    
    PandaComentListModel  * pandaModel5 = [[PandaComentListModel alloc]init];
    pandaModel5.imgurl = @"https://img1.doubanio.com/icon/u40260706-469.jpg";
    pandaModel5.name = @"天藍";
    pandaModel5.time = @"2021-05-19 13:41:25";
    pandaModel5.content =@"你们觉得“好看”是在于艺术总监屠楠，代表作《妖猫传》，金鸡奖最佳美术，亚洲电影最佳美术，金马奖提名最佳美术。 你们觉得“好看”是在于造型设计黄薇，代表作《小时代》《远大前程》《海上牧云记》。 屠楠和黄薇提供给大家的“好看”，真的是最原始的好看，视觉效果上的“...  ";
    pandaModel5.ZoneID = 2;
    pandaModel5.ComentID = 5;
    pandaModel5.CellHeight =0;
    [PadanComeTempArr addObject:pandaModel5];
    
    PandaComentListModel  * pandaModel6 = [[PandaComentListModel alloc]init];
    pandaModel6.imgurl = @"https://img1.doubanio.com/icon/u68318512-8.jpg";
    pandaModel6.name = @"天藍";
    pandaModel6.time = @"2021-05-19 12:11:45";
    pandaModel6.content =@"选择了自由社会，就要承受自由社会的代价 ";
    pandaModel6.ZoneID = 3;
    pandaModel6.ComentID = 6;
    pandaModel6.CellHeight =0;
    [PadanComeTempArr addObject:pandaModel6];
    
    
    PandaComentListModel  * pandaModel7 = [[PandaComentListModel alloc]init];
    pandaModel7.imgurl = @"https://img9.doubanio.com/icon/u209329311-6.jpg";
    pandaModel7.name = @"再造一个新宇宙";
    pandaModel7.time = @"2021-05-18 11:09:13";
    pandaModel7.content =@"很有幸参加了电影的点映，在观影的过程中就能观察到周围的朋友们都有在拿着纸巾擦眼泪。这是一部现实题材的亲情电影，生长在重男轻女的家庭，一个追求独立自我、拼尽全力想挣脱束缚的姐姐，在面对才四五岁的“拖油瓶”弟弟时，展现出内心矛盾与拉扯，自己的未来与亲情的纽带，都十分复杂和深刻。电影以女性视角展示非独生子女家庭姐姐的无奈，女性生活在世上的诸多困难。安然是一个独立、坚韧、自由的女生，即使含着泪也会大口吃饭，她说自己命硬，她说“一个从小不在父母身边长大的女孩子，当她被人欺负的时候，她打得赢要打，打不赢也要打。” ，她让我感动让我敬佩，让我觉得无论遭遇了什么，她都能闯过难关。影片的结局是开放式的，因为故事来源于现实，而我们无法决定现实的结局。但我希望，每一个像安然那么勇敢独立的女性，都能有属于自己的美好未来。全片全员演技在线，张子枫的演技和共情能力一如既往地好，每一次她流泪、情绪爆发，我的心也跟着揪起来。弟弟、姑妈、舅舅等等的演技也都很优秀，自然、生活化、真情流露。《我的姐姐》是一部好电影，强烈推荐大家都去看，祝《我的姐姐》票房大卖！ ";
    pandaModel7.ZoneID = 4;
    pandaModel7.ComentID = 7;
    pandaModel7.CellHeight =0;
    [PadanComeTempArr addObject:pandaModel7];
    
    PandaComentListModel  * pandaModel8 = [[PandaComentListModel alloc]init];
    pandaModel8.imgurl = @"https://img1.doubanio.com/icon/u61408621-7.jpg";
    pandaModel8.name = @"humensmoc";
    pandaModel8.time = @"2021-05-18 12:12:43";
    pandaModel8.content =@"看完了电影《我的姐姐》，感触颇深，现实，值得人思考，不知道电影的原型人物现在过得么样，有没有后悔自己曾经的选择…";
    pandaModel8.ZoneID = 4;
    pandaModel8.ComentID = 8;
    pandaModel8.CellHeight =0;
    [PadanComeTempArr addObject:pandaModel8];
    
    
    PandaComentListModel  * pandaModel9 = [[PandaComentListModel alloc]init];
    pandaModel9.imgurl = @"https://img9.doubanio.com/icon/u216999354-5.jpg";
    pandaModel9.name = @"亦如风 ";
    pandaModel9.time = @"2021-05-17 11:08:15";
    pandaModel9.content =@"十年前看过，印象深刻，现在很难找了";
    pandaModel9.ZoneID = 5;
    pandaModel9.ComentID = 9;
    pandaModel9.CellHeight =0;
    [PadanComeTempArr addObject:pandaModel9];
    
    
    
    BOOL isComentModel  = [[NSUserDefaults standardUserDefaults] boolForKey:@"pandacoment"];
    if (isComentModel == NO) {
        BOOL tempModel =  [WHC_ModelSqlite inserts:PadanComeTempArr.copy];
        [[NSUserDefaults standardUserDefaults] setBool:tempModel forKey:@"pandacoment"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    
}
+(void)PandaMsgDetailModelConfig{
    NSMutableArray * tempArr = [NSMutableArray array];
    
    PandaMsgDetailModel * msgDetail = [[PandaMsgDetailModel alloc]init];
    msgDetail.msgname = @"娄烨的作品都有哪些呀，楼主推荐推荐";
    msgDetail.userID = 0;
    msgDetail.imgUrl = @"https://img1.doubanio.com/icon/u58507059-17.jpg";
    msgDetail.msgisMe = YES;
    msgDetail.CellHeight = 0;
    [tempArr addObject:msgDetail];
    
    PandaMsgDetailModel * msgDetail1 = [[PandaMsgDetailModel alloc]init];
    msgDetail1.msgname = @"大概有推拿、春风沉醉的夜晚、浮城谜事、紫蝴蝶、苏州河、颐和园等等";
    msgDetail1.userID = 0;
    msgDetail1.imgUrl = @"https://img1.doubanio.com/icon/u58507059-17.jpg";
    msgDetail1.msgisMe = NO;
    msgDetail1.CellHeight = 0;
    [tempArr addObject:msgDetail1];
    
    
    PandaMsgDetailModel * msgDetail2 = [[PandaMsgDetailModel alloc]init];
    msgDetail2.msgname = @"如果你想看的话，我可以推荐你去看看春风沉醉的夜晚";
    msgDetail2.userID = 0;
    msgDetail2.imgUrl = @"https://img1.doubanio.com/icon/u58507059-17.jpg";
    msgDetail2.msgisMe = NO;
    msgDetail2.CellHeight = 0;
    [tempArr addObject:msgDetail2];
    
    
    
    PandaMsgDetailModel * msgDetail3 = [[PandaMsgDetailModel alloc]init];
    msgDetail3.msgname = @"楼主你讲的这个是电影还是电视剧啊？";
    msgDetail3.userID = 1;
    msgDetail3.imgUrl = @"https://img2.doubanio.com/icon/u219157276-2.jpg";
    msgDetail3.msgisMe = YES;
    msgDetail3.CellHeight = 0;
    [tempArr addObject:msgDetail3];
    
    PandaMsgDetailModel * msgDetail4 = [[PandaMsgDetailModel alloc]init];
    msgDetail4.msgname = @"这个是电影哈～";
    msgDetail4.userID = 1;
    msgDetail4.imgUrl = @"https://img2.doubanio.com/icon/u219157276-2.jpg";
    msgDetail4.msgisMe = NO;
    msgDetail4.CellHeight = 0;
    [tempArr addObject:msgDetail4];
    
    PandaMsgDetailModel * msgDetail5 = [[PandaMsgDetailModel alloc]init];
    msgDetail5.msgname = @"这个在哪儿能看啊";
    msgDetail5.userID = 1;
    msgDetail5.imgUrl = @"https://img2.doubanio.com/icon/u219157276-2.jpg";
    msgDetail5.msgisMe = YES;
    msgDetail5.CellHeight = 0;
    [tempArr addObject:msgDetail5];
    
    PandaMsgDetailModel * msgDetail6 = [[PandaMsgDetailModel alloc]init];
    msgDetail6.msgname = @"好家伙，你可以去熊猫追剧里看看啊 ";
    msgDetail6.userID = 1;
    msgDetail6.imgUrl = @"https://img2.doubanio.com/icon/u219157276-2.jpg";
    msgDetail6.msgisMe = NO;
    msgDetail6.CellHeight = 0;
    [tempArr addObject:msgDetail6];
    
    
    PandaMsgDetailModel * msgDetail7 = [[PandaMsgDetailModel alloc]init];
    msgDetail7.msgname = @"实在不行，你可以去百度一下，看看有没有资源";
    msgDetail7.userID = 1;
    msgDetail7.imgUrl = @"https://img2.doubanio.com/icon/u219157276-2.jpg";
    msgDetail7.msgisMe = NO;
    msgDetail7.CellHeight = 0;
    [tempArr addObject:msgDetail7];
    
    
    
    PandaMsgDetailModel * msgDetail8 = [[PandaMsgDetailModel alloc]init];
    msgDetail8.msgname = @"《扫黑·决战》:张颂文太可怕了，不知道楼主有没有去看，没有看可以去看看哦";
    msgDetail8.userID = 2;
    msgDetail8.imgUrl = @"https://img1.doubanio.com/icon/u201460252-8.jpg";
    msgDetail8.msgisMe = YES;
    msgDetail8.CellHeight = 0;
    [tempArr addObject:msgDetail8];
    
    
    PandaMsgDetailModel * msgDetail9 = [[PandaMsgDetailModel alloc]init];
    msgDetail9.msgname = @"韦斯·安德森的风格是不是比较怪异啊";
    msgDetail9.userID = 3;
    msgDetail9.imgUrl = @"https://img3.doubanio.com/icon/u211339794-1.jpg";
    msgDetail9.msgisMe = YES;
    msgDetail9.CellHeight = 0;
    [tempArr addObject:msgDetail9];
    
    
    BOOL ismsgDetailModel  = [[NSUserDefaults standardUserDefaults] boolForKey:@"pandaMsgDetailList"];
    if (ismsgDetailModel == NO) {
        BOOL tempModel =  [WHC_ModelSqlite inserts:tempArr.copy];
        [[NSUserDefaults standardUserDefaults] setBool:tempModel forKey:@"pandaMsgDetailList"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    
}
+(void)PandaMovieMsgModelConfig{
    NSMutableArray * tempArr =[NSMutableArray array];
    
    PandaMovieMsgModel  *  pandaModel = [[PandaMovieMsgModel alloc]init];
    pandaModel.imgurl = @"https://img1.doubanio.com/icon/u58507059-17.jpg";
    pandaModel.topname = @"Moonymoreo";
    pandaModel.content = @"如果你想看的话，我可以推荐你去看看春风沉醉的夜晚";
    pandaModel.time = @"2021-05-20 16:21:45";
    pandaModel.ChatID = 0;
    pandaModel.isShowRed = YES;
    pandaModel.redNum = 2;
    [tempArr addObject:pandaModel];

    
    
    PandaMovieMsgModel  *  pandaModel1 = [[PandaMovieMsgModel alloc]init];
    pandaModel1.imgurl = @"https://img2.doubanio.com/icon/u219157276-2.jpg";
    pandaModel1.topname = @"胖又";
    pandaModel1.content = @"实在不行，你可以去百度一下，看看有没有资源";
    pandaModel1.time = @"2021-05-20 22:09:13";
    pandaModel1.ChatID = 1;
    pandaModel1.isShowRed = YES;
    pandaModel1.redNum = 1;
    [tempArr addObject:pandaModel1];
    
    
    PandaMovieMsgModel  *  pandaModel2 = [[PandaMovieMsgModel alloc]init];
    pandaModel2.imgurl = @"https://img1.doubanio.com/icon/u201460252-8.jpg";
    pandaModel2.topname = @"霅衎";
    pandaModel2.content = @"《扫黑·决战》:张颂文太可怕了，不知道楼主有没有去看，没有看可以去看看哦";
    pandaModel2.time = @"2021-05-19 15:24:26";
    pandaModel2.ChatID = 2;
    pandaModel2.isShowRed = NO;
    pandaModel2.redNum = 0;
    [tempArr addObject:pandaModel2];
    
    
    
    PandaMovieMsgModel  *  pandaModel3 = [[PandaMovieMsgModel alloc]init];
    pandaModel3.imgurl = @"https://img3.doubanio.com/icon/u211339794-1.jpg";
    pandaModel3.topname = @"自由社";
    pandaModel3.content = @"韦斯·安德森的风格是不是比较怪异啊";
    pandaModel3.time = @"周三";
    pandaModel3.ChatID = 3;
    pandaModel3.isShowRed = NO;
    pandaModel3.redNum = 0;
    [tempArr addObject:pandaModel3];
    
    BOOL ismsgModel  = [[NSUserDefaults standardUserDefaults] boolForKey:@"pandaMsgList"];
    if (ismsgModel == NO) {
        BOOL tempModel =  [WHC_ModelSqlite inserts:tempArr.copy];
        [[NSUserDefaults standardUserDefaults] setBool:tempModel forKey:@"pandaMsgList"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    
}
+(PandaMoviewHotComentModel * )PandaMovieHotComentCofnigsWithImgUrl:(NSString *)imgurl FilmName:(NSString *)name mytime:(NSString *)time MyFilmID:(NSInteger)FilmID MyComentID:(NSInteger)ComentID CellHeight:(CGFloat)cellheight myContent:(NSString *)content strarNum:(NSInteger)stranum{
    PandaMoviewHotComentModel * pandaitem =[[PandaMoviewHotComentModel alloc]init];
    pandaitem.StarNum =  stranum;
    pandaitem.imgurl = imgurl;
    pandaitem.name =  name;
    pandaitem.time = time;
    pandaitem.FilmID = FilmID;
    pandaitem.ComentID = ComentID;
    pandaitem.CellHeight = 0;
    pandaitem.content = content;
    return pandaitem;
}
@end
