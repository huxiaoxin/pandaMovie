
#import "PandaHotNewsViewController.h"
#import "GuoJiQiqhuoNewsViewLayout.h"
#import "GuoJiQihuoNewsCollectionCell.h"
#import "GuoJiQihuoNewsModel.h"
#import "GuoJiQihuoNewsSizeTools.h"
#import "GuoJiQIhuoNewsDetailViewController.h"
#import "LYHSTockHttpRequestTool.h"
@interface PandaHotNewsViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,LMHWaterFallLayoutDeleaget>
@property(nonatomic,strong) UICollectionView * GuoJiQihuoNewsCollectionViews;
@property(nonatomic,strong) NSMutableArray * GuoJiQihuoNewsCollectionDataArr;
@end

@implementation PandaHotNewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"影视资讯";
    [self.view addSubview:self.GuoJiQihuoNewsCollectionViews];
    [_GuoJiQihuoNewsCollectionViews registerClass:[GuoJiQihuoNewsCollectionCell class] forCellWithReuseIdentifier:@"GuoJiQihuoNewsCollectionCell"];
    // Do any additional setup after loading the view.
}
-(UICollectionView *)GuoJiQihuoNewsCollectionViews{
    if (!_GuoJiQihuoNewsCollectionViews) {
        GuoJiQiqhuoNewsViewLayout * GuoJiQihuoNewsLayout = [[GuoJiQiqhuoNewsViewLayout alloc]init];
        GuoJiQihuoNewsLayout.delegate = self;
        _GuoJiQihuoNewsCollectionViews = [[UICollectionView alloc]initWithFrame:CGRectMake(0, GK_STATUSBAR_NAVBAR_HEIGHT, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-NaviH-GK_SAFEAREA_BTM) collectionViewLayout:GuoJiQihuoNewsLayout];
        _GuoJiQihuoNewsCollectionViews.backgroundColor = [UIColor clearColor];
        _GuoJiQihuoNewsCollectionViews.delegate = self;
        _GuoJiQihuoNewsCollectionViews.dataSource = self;
        _GuoJiQihuoNewsCollectionViews.showsVerticalScrollIndicator = NO;
        _GuoJiQihuoNewsCollectionViews.showsHorizontalScrollIndicator = NO;
        _GuoJiQihuoNewsCollectionViews.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(GuoJiQihuoNewsHeaderClciks)];
        [_GuoJiQihuoNewsCollectionViews.mj_header beginRefreshing];
    }
    return _GuoJiQihuoNewsCollectionViews;
}
#pragma mark UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    GuoJiQihuoNewsCollectionCell * GuoJiQihuoNewsCell  = [collectionView dequeueReusableCellWithReuseIdentifier:@"GuoJiQihuoNewsCollectionCell" forIndexPath:indexPath];
    GuoJiQihuoNewsCell.GuoJiNewsItem = self.GuoJiQihuoNewsCollectionDataArr[indexPath.row];
    return GuoJiQihuoNewsCell;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    self.GuoJiQihuoNewsCollectionViews.mj_footer.hidden = self.GuoJiQihuoNewsCollectionDataArr.count == 0;
    return  self.GuoJiQihuoNewsCollectionDataArr.count;
}
- (CGFloat)waterFallLayout:(GuoJiQiqhuoNewsViewLayout *)waterFallLayout heightForItemAtIndexPath:(NSUInteger)indexPath itemWidth:(CGFloat)itemWidth{
    GuoJiQihuoNewsModel * GuoJiQihuoNewsItem = self.GuoJiQihuoNewsCollectionDataArr[indexPath];
    return itemWidth*GuoJiQihuoNewsItem.height/GuoJiQihuoNewsItem.width+K(100);
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    GuoJiQIhuoNewsDetailViewController * GuoJiDetialVc = [[GuoJiQIhuoNewsDetailViewController alloc]init];
    GuoJiDetialVc.GuoJiItem = self.GuoJiQihuoNewsCollectionDataArr[indexPath.row];
    [self.navigationController pushViewController:GuoJiDetialVc animated:YES];
}
- (CGFloat)rowMarginInWaterFallLayout:(GuoJiQiqhuoNewsViewLayout *)waterFallLayout{
    return K(20);
}
- (NSUInteger)columnCountInWaterFallLayout:(GuoJiQiqhuoNewsViewLayout *)waterFallLayout{
    return 2;
}
-(void)GuoJiQihuoNewsHeaderClciks{
    MJWeakSelf;
    NSMutableDictionary * SanXiaMesaaParmters = [[NSMutableDictionary alloc]initWithDictionary:@{@"channel":@"新闻",@"num":@"40",@"start":@"1",@"appkey":@"cabf965ed69f2a0d32c99db3ad6cebb3"}];
    [LYHSTockHttpRequestTool getHttpRequestWithURL:@"https://way.jd.com/jisuapi/get" Parameters:SanXiaMesaaParmters Success:^(id  _Nonnull object) {
        NSArray * GuoJiQihuoNewsDataArr =[[[object objectForKey:@"result"] objectForKey:@"result"] objectForKey:@"list"];
        NSMutableArray * GuoJiQihuoNewstempArr= [[NSMutableArray alloc]init];
        for (NSDictionary * GuoJiQihuoNewstDics in GuoJiQihuoNewsDataArr) {
            GuoJiQihuoNewsModel * GuoJiQihuoNewsItem = [GuoJiQihuoNewsModel BaseinitWithDic:GuoJiQihuoNewstDics];
            if (![GuoJiQihuoNewsItem.content containsString:@"https://interface.sina.cn/wap_api/video_location.d.html"]) {
                if (![GuoJiQihuoNewsItem.pic containsString:@"https://n.sinaimg.cn/default/2fb77759/20151125/320X320.png"]) {
                    CGSize GuoJiQihuoNewsSize = [GuoJiQihuoNewsSizeTools getImageSizeWithURL:GuoJiQihuoNewsItem.pic];
                    GuoJiQihuoNewsItem.height = GuoJiQihuoNewsSize.height;
                    GuoJiQihuoNewsItem.width = GuoJiQihuoNewsSize.width;
                    [GuoJiQihuoNewstempArr addObject:GuoJiQihuoNewsItem];
                }
                
            }
        }
        weakSelf.GuoJiQihuoNewsCollectionDataArr = GuoJiQihuoNewstempArr;
        [weakSelf.GuoJiQihuoNewsCollectionViews reloadData];
        [weakSelf.GuoJiQihuoNewsCollectionViews.mj_header endRefreshing];
        
    } Failure:^(id  _Nonnull fail) {
        [weakSelf.GuoJiQihuoNewsCollectionViews.mj_header endRefreshing];
        [LCProgressHUD showFailure:fail];
    }];
    
    
    //    [LYHSTockHttpRequestTool NewpostHttpRequestWithURL:@"http://jisunews.market.alicloudapi.com/news/get" Parameters:GuoJiQihuoNewsParmters Success:^(id  _Nonnull object) {
    //        NSArray * GuoJiQihuoNewsDataArr =[[object objectForKey:@"result"]  objectForKey:@"list"];
    //        NSMutableArray * GuoJiQihuoNewstempArr= [[NSMutableArray alloc]init];
    //        for (NSDictionary * GuoJiQihuoNewstDics in GuoJiQihuoNewsDataArr) {
    //            GuoJiQihuoNewsModel * GuoJiQihuoNewsItem = [GuoJiQihuoNewsModel BaseinitWithDic:GuoJiQihuoNewstDics];
    //            if (![GuoJiQihuoNewsItem.content containsString:@"https://interface.sina.cn/wap_api/video_location.d.html"]) {
    //                if (![GuoJiQihuoNewsItem.pic containsString:@"https://n.sinaimg.cn/default/2fb77759/20151125/320X320.png"]) {
    //                    CGSize GuoJiQihuoNewsSize = [GuoJiQihuoNewsSizeTools getImageSizeWithURL:GuoJiQihuoNewsItem.pic];
    //                    GuoJiQihuoNewsItem.height = GuoJiQihuoNewsSize.height;
    //                    GuoJiQihuoNewsItem.width = GuoJiQihuoNewsSize.width;
    //                    [GuoJiQihuoNewstempArr addObject:GuoJiQihuoNewsItem];
    //                }
    //
    //            }
    //        }
    //        weakSelf.GuoJiQihuoNewsCollectionDataArr = GuoJiQihuoNewstempArr;
    //        [weakSelf.GuoJiQihuoNewsCollectionViews reloadData];
    //        [weakSelf.GuoJiQihuoNewsCollectionViews.mj_header endRefreshing];
    //    } Failure:^(id  _Nonnull fail) {
    //        [weakSelf.GuoJiQihuoNewsCollectionViews.mj_header endRefreshing];
    //        [LCProgressHUD showFailure:fail];
    //    }];
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

