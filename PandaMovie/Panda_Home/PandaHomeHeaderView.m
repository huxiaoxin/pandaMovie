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
@interface PandaHomeHeaderView ()<CHCardViewDelegate, CHCardViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource,PandaHotingCollectionViewCellDelegate>
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
    
    NSArray *urls = @[@"https://img1.doubanio.com/view/photo/l/public/p2643157619.jpg",@"https://img2.doubanio.com/view/photo/l/public/p2634973392.jpg"];
    
    for (NSString *url in urls) {
        CHCardItemModel *itemModel = [[CHCardItemModel alloc] init];
        itemModel.imagename = url;
        [self.dataArray addObject:itemModel];
    }
  
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
    return self.dataArray.count;
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
- (void)cardView:(CHCardView *)cardView didClickItemAtIndex:(NSInteger)index {
    
    [self.delegate PandaHomeHeaderViewWithBanarDidSelteceIndex:index];
}

-(void)pandabtnClick:(PandaHomeBtn *)pandabtn{
    [self.delegate PandaHomeHeaderViewWithBtnClickIndex:pandabtn.tag];
}
#pragma mark--UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    if (collectionView == self.PandanHotingCollectionView) {
        return _pandaWatchingArr.count;
    }else{
        return _pandaWatedArr.count;
    }
}
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    if (collectionView == self.PandanHotingCollectionView) {
        PandaHotingCollectionViewCell * hotingCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PandaHotingCollectionViewCell" forIndexPath:indexPath];
        hotingCell.tag  =  indexPath.row;
        hotingCell.delegate  =self;
        hotingCell.pandaModel = _pandaWatchingArr[indexPath.row];
        return hotingCell;
    }else{
        PandaCommonCollectionViewCell * commonCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PandaCommonCollectionViewCell" forIndexPath:indexPath];
        commonCell.padanModel = _pandaWatedArr[indexPath.row];
    return commonCell;
    }

}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    if (collectionView == self.PandanHotingCollectionView) {
        [self.delegate PandaHomeHeaderViewCollectionDidSeltcWith:_pandaWatchingArr[indexPath.row]];
    }else{
        [self.delegate PandaHomeHeaderViewCollectionDidSeltcWith:_pandaWatedArr[indexPath.row]];

    }
}
-(UILabel *)PandaConfigText:(NSString *)text lbFrame:(CGRect)lbFrame{
    UILabel * lb = [[UILabel alloc]initWithFrame:lbFrame];
    lb.text=  text;
    lb.textColor = [UIColor whiteColor];
    lb.font = [UIFont boldSystemFontOfSize:20];
    return lb;
}
- (void)setPandaWatchingArr:(NSArray *)pandaWatchingArr{
    _pandaWatchingArr = pandaWatchingArr;
    [_PandanHotingCollectionView reloadData];
    [self.PandaCardView reloadData];

}
- (void)setPandaWatedArr:(NSArray *)pandaWatedArr{
    _pandaWatedArr  =  pandaWatedArr;
    [_PandanCommonCollectionView reloadData];
}
#pragma mark--PandaHotingCollectionViewCellDelegate
-(void)PandaHotingCollectionViewCellBtnDidClickWithCellIndex:(NSInteger)CellIndex{

    
    if ([PandaMovieLoginAccoutModel PandaMoviewuserIsLogin]) {
        [LCProgressHUD showLoading:@""];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [LCProgressHUD hide];
            PandaMovieModel * model =self->_pandaWatchingArr[CellIndex];
            model.PandaMoview_isCollected = !model.PandaMoview_isCollected;
            [WHC_ModelSqlite update:[PandaMovieModel class] value:[NSString stringWithFormat:@"isColletcd ='%@'",@(model.PandaMoview_isCollected)] where:[NSString stringWithFormat:@"FilmID ='%ld'",model.PandaMovie_ID]];
            [self.PandanCommonCollectionView reloadData];
            [self.delegate PandaHomeHeaderViewShowRefaeTableVew];

        });
    }else{
        [self.delegate PandaHomeHeaderViewShowLoginVC];
    }
}
@end
