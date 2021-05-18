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
@implementation AppDelegate (PandaSafe)
+(void)load{
    [self PandaZoneModelConfig];
    [self PadaCatagoryweizhiModelConfig];
    [self PandaComentListModelConfig];
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
    zoneModel.isZan = NO;
    zoneModel.PandaZoneID = 0;
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
    [tempArr addObject:zoneModel1];
    
    
    
    PandaZoneModel * zoneModel2 = [[PandaZoneModel alloc]init];
    zoneModel2.imgurl = @"https://img1.doubanio.com/icon/u201460252-8.jpg";
    zoneModel2.username = @"霅衎";
    zoneModel2.time = @"2021-05-19 17:00:34";
    zoneModel2.CellHeight =  RealWidth(0);
    zoneModel2.title = @"《晴雅集》太好看了有木有";
    zoneModel2.content = @"看《晴雅集》之前，我真的get不到dl的颜，看了这部电影之后，不说粉了，反正不是无感了。但是最关键的还是这部电影拍的太好看了！不知道大家有木有同感？相对于《侍神令》来说简直甩出十万八千里去。当然，各位不要说我捧一踩一哈，只是属于善意的比较，郭敬明不愧是作家，审美就是有格调。《晴雅集》不仅画面唯美，故事情节也很吸引人，演员的表演也很饱满，有张力！被禁的有点可惜。";
    zoneModel2.imgArr = @[@"https://img1.doubanio.com/view/group_topic/l/public/p442168109.jpg",@"https://img3.doubanio.com/view/group_topic/l/public/p442168080.jpg",@"https://img2.doubanio.com/view/group_topic/l/public/p442168103.jpg"];
    zoneModel2.isZan = NO;
    zoneModel2.PandaZoneID = 2;
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
    pandaweizhiItem.isCollted = NO;
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
    pandaModel4.imgurl = @"https://img2.doubanio.com/icon/u106289937-3.jpg";
    pandaModel4.name = @"索明芳";
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
    pandaModel6.imgurl = @"https://img1.doubanio.com/icon/u40260706-469.jpg";
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
@end
