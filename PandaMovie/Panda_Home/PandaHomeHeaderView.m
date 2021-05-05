//
//  PandaHomeHeaderView.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/4.
//

#import "PandaHomeHeaderView.h"
#import "CHCardView.h"
#import "CHCardItemCustomView.h"
#import "CHCardItemModel.h"
#import "PandaHomeBtn.h"
#import "PandaHotingCollectionViewCell.h"
#import "PandaCommonCollectionViewCell.h"
@interface PandaHomeHeaderView ()<CHCardViewDelegate, CHCardViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic, strong) NSMutableArray *dataArray;
@property (nonatomic, strong) CHCardView * PandaCardView;
@property(nonatomic,copy)     NSArray * PandaDataArr;
@property (nonatomic, strong) PandaHomeBtn * pandabtn;
@property (nonatomic, strong) UILabel * pandaToplb;
@property(nonatomic,strong)  UICollectionView * PandanHotingCollectionView;
@property(nonatomic,strong)  UILabel * pandaCommonlb;
@property(nonatomic,strong)  UICollectionView * PandanCommonCollectionView;
@property(nonatomic,strong)  UILabel * pandaDeeplb;

@end
@implementation PandaHomeHeaderView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.PandaDataArr = @[@"实时榜单",@"甄选好片",@"影视新闻",@"影视咨询"];
        [self addSubview:self.PandaCardView];
        [self loadData];
        for (int index = 0; index < _PandaDataArr.count; index++) {
            PandaHomeBtn * pandabtn = [[PandaHomeBtn alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH/_PandaDataArr.count*index, CGRectGetMaxY(_PandaCardView.frame)+RealWidth(25), GK_SCREEN_WIDTH/_PandaDataArr.count, RealWidth(70))];
            pandabtn.PandaBtomlb.text = _PandaDataArr[index];
            pandabtn.PandaTopImgView.image = [UIImage imageNamed:_PandaDataArr[index]];
            pandabtn.tag = index;
            [pandabtn addTarget:self action:@selector(pandabtnClick:) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:pandabtn];
            self.pandabtn = pandabtn;
        }
        
        UILabel * pandaToplb = [self PandaConfigText:@"正在热映" lbFrame:CGRectMake(RealWidth(20), CGRectGetMaxY(_pandabtn.frame)+RealWidth(10), RealWidth(200), RealWidth(20))];
        [self addSubview:pandaToplb];
        self.pandaToplb = pandaToplb;
        [self addSubview:self.PandanHotingCollectionView];
        
        UILabel * pandaCommonlb = [self PandaConfigText:@"即将上映" lbFrame:CGRectMake(RealWidth(20), CGRectGetMaxY(_PandanHotingCollectionView.frame)+RealWidth(15), RealWidth(200), RealWidth(20))];
        [self addSubview:pandaCommonlb];
        self.pandaCommonlb = pandaCommonlb;
        [self addSubview:self.PandanCommonCollectionView];
        
        UILabel * pandaDeeplb = [self PandaConfigText:@"热门资讯" lbFrame:CGRectMake(RealWidth(20), CGRectGetMaxY(_PandanCommonCollectionView.frame)+RealWidth(15), RealWidth(200), RealWidth(20))];
        [self addSubview:pandaDeeplb];
        self.pandaDeeplb = pandaDeeplb;
        self.PandanHeaderHeight =  CGRectGetMaxY(pandaDeeplb.frame);
    }
    return self;
}
- (UICollectionView *)PandanHotingCollectionView{
    if (!_PandanHotingCollectionView) {
        UICollectionViewFlowLayout * pandaLayout = [[UICollectionViewFlowLayout alloc]init];
        pandaLayout.itemSize = CGSizeMake(RealWidth(200), RealWidth(110));
        pandaLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        pandaLayout.sectionInset =  UIEdgeInsetsMake(RealWidth(10), RealWidth(15), 0, RealWidth(15));
        pandaLayout.minimumLineSpacing = RealWidth(15);
        _PandanHotingCollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(_pandaToplb.frame), GK_SCREEN_WIDTH, RealWidth(120)) collectionViewLayout:pandaLayout];
        _PandanHotingCollectionView.delegate = self;
        _PandanHotingCollectionView.dataSource = self;
        _PandanHotingCollectionView.showsVerticalScrollIndicator = NO;
        _PandanHotingCollectionView.showsHorizontalScrollIndicator = NO;
        _PandanHotingCollectionView.backgroundColor = [UIColor clearColor];
        [_PandanHotingCollectionView registerClass:[PandaHotingCollectionViewCell class] forCellWithReuseIdentifier:@"PandaHotingCollectionViewCell"];
    }
    return _PandanHotingCollectionView;
}
- (UICollectionView *)PandanCommonCollectionView{
    if (!_PandanCommonCollectionView) {
        UICollectionViewFlowLayout * pandaLayout = [[UICollectionViewFlowLayout alloc]init];
        pandaLayout.itemSize = CGSizeMake(RealWidth(80), RealWidth(150));
        pandaLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        pandaLayout.sectionInset =  UIEdgeInsetsMake(RealWidth(15), RealWidth(18), 0, RealWidth(15));
        pandaLayout.minimumLineSpacing = RealWidth(15);
        _PandanCommonCollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(_pandaCommonlb.frame), GK_SCREEN_WIDTH, RealWidth(150)) collectionViewLayout:pandaLayout];
        _PandanCommonCollectionView.delegate = self;
        _PandanCommonCollectionView.dataSource = self;
        _PandanCommonCollectionView.showsVerticalScrollIndicator = NO;
        _PandanCommonCollectionView.showsHorizontalScrollIndicator = NO;
        _PandanCommonCollectionView.backgroundColor = [UIColor clearColor];
        [_PandanCommonCollectionView registerClass:[PandaCommonCollectionViewCell class] forCellWithReuseIdentifier:@"PandaCommonCollectionViewCell"];
    }
    return _PandanCommonCollectionView;
}
- (NSMutableArray *)dataArray {
    if (!_dataArray) {
 _dataArray = [NSMutableArray array];
    }
    return _dataArray;
}
-(void)loadData{
    
    // 网络数据
    [self.dataArray removeAllObjects];
    
    NSArray *urls = @[@"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201312%2F31%2F111859myvyiivetyftfz2n.jpg&refer=http%3A%2F%2Fattach.bbs.miui.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1622689847&t=f69c0bb6cc5c39b30245acdfb00ad153",@"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201311%2F23%2F215012oxqaawegw2v877i4.jpg&refer=http%3A%2F%2Fattach.bbs.miui.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1622689847&t=c9666fd210e9f4f8ebd53bb61723cca6",@"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fupload%2Fupc%2Ftx%2Fsoftbbs%2F1003%2F07%2Fc0%2F3134443_1267900790753_1024x1024soft.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1622689847&t=7221559345f83c3faf4ac496f30af55e",@"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fupload%2Fupc%2Ftx%2Fwallpaper%2F1212%2F10%2Fc1%2F16491670_1355126816487.jpg&refer=http%3A%2F%2Fimg.pconline.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1622689847&t=958f72a24d6d74c4cdcb5020b281722a",@"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201303%2F18%2F233119quyrec7to3ws3rco.jpg&refer=http%3A%2F%2Fattach.bbs.miui.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1622689847&t=a2745495ca84253cc5c249172d8d9ddf"];
    
    for (NSString *url in urls) {
        CHCardItemModel *itemModel = [[CHCardItemModel alloc] init];
        itemModel.imagename = url;
        [self.dataArray addObject:itemModel];
    }
    [self.PandaCardView reloadData];
  
}
- (CHCardView *)PandaCardView{
    if (!_PandaCardView) {
        _PandaCardView = [[CHCardView alloc]initWithFrame: CGRectMake(0, RealWidth(5), SCREEN_Width, RealWidth(160))];
        _PandaCardView.delegate = self;
        _PandaCardView.dataSource = self;
    }
    return _PandaCardView;
}
#pragma mark--CHCardViewDataSource
- (NSInteger)numberOfItemViewsInCardView:(CHCardView *)cardView{
    return 4;
}
- (CHCardItemView *)cardView:(CHCardView *)cardView itemViewAtIndex:(NSInteger)index{
    CHCardItemCustomView *itemView = [[CHCardItemCustomView alloc] initWithFrame:cardView.bounds];
    itemView.itemModel = self.dataArray[index];
    return itemView;
}
- (void)cardViewNeedMoreData:(CHCardView *)cardView{
    // data
    [self loadData];
    
    // reload
    [self.PandaCardView reloadData];
}
#pragma mark--CHCardViewDelegate
- (void)cardView:(CHCardView *)cardView didClickItemAtIndex:(NSInteger)index { }

-(void)pandabtnClick:(PandaHomeBtn *)pandabtn{
    [self.delegate PandaHomeHeaderViewWithBtnClickIndex:pandabtn.tag];
}
#pragma mark--UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 100;
}
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    if (collectionView == self.PandanHotingCollectionView) {
        PandaHotingCollectionViewCell * hotingCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PandaHotingCollectionViewCell" forIndexPath:indexPath];
        return hotingCell;
    }else{
        PandaCommonCollectionViewCell * commonCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PandaCommonCollectionViewCell" forIndexPath:indexPath];
    return commonCell;
    }

}

-(UILabel *)PandaConfigText:(NSString *)text lbFrame:(CGRect)lbFrame{
    UILabel * lb = [[UILabel alloc]initWithFrame:lbFrame];
    lb.text=  text;
    lb.textColor = [UIColor whiteColor];
    lb.font = [UIFont boldSystemFontOfSize:20];
    return lb;
}

@end
