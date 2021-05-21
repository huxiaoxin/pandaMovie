//
//  PandaMoviewDetrailHeader.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/20.
//

#import "PandaMoviewDetrailHeader.h"
#import "PandaMovielb.h"
#import "PandaMoviewDetailArtoiclCell.h"
@interface PandaMoviewDetrailHeader ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic,strong) UIView * PandaContetnView;
@property(nonatomic,strong) UILabel * PandaIntroducelb;
@property(nonatomic,strong) PandaMovieModel * pandaModel;
@property(nonatomic,strong) UICollectionView * pandaColectioveiws;
@property(nonatomic,strong) PandaMovielb * pandaArticlb;
@end
@implementation PandaMoviewDetrailHeader
-(instancetype)initWithFrame:(CGRect)frame ConfiguractionWith:(PandaMovieModel *)pandaItem{
    if (self = [super initWithFrame:frame]) {
        self.pandaModel = pandaItem;
        self.backgroundColor = [UIColor clearColor];
        
        UIView * pandaContentView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(100))];
        pandaContentView.backgroundColor = [UIColor clearColor];
        [self addSubview:pandaContentView];
        
        UIView * WhiteView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(30))];
        WhiteView.backgroundColor = [UIColor whiteColor];
        [WhiteView acs_radiusWithRadius:RealWidth(15) corner:UIRectCornerTopLeft | UIRectCornerTopRight];
        [pandaContentView addSubview:WhiteView];
        
        CGSize panIntrolbSize= [@"简介" cxl_sizeWithString:[UIFont boldSystemFontOfSize:20]];
        PandaMovielb * panIntrolb = [[PandaMovielb alloc]initWithFrame:CGRectMake(RealWidth(15), RealWidth(15), panIntrolbSize.width, RealWidth(20))];
        panIntrolb.pandaToplb.text = @"简介";
        [WhiteView addSubview:panIntrolb];

         UILabel * PandaIntroducelb = [[UILabel alloc]initWithFrame:CGRectMake(RealWidth(10), CGRectGetMaxY(panIntrolb.frame)+RealWidth(15), GK_SCREEN_WIDTH-RealWidth(20), 0)];
        PandaIntroducelb.textColor = [UIColor blackColor];
        PandaIntroducelb.numberOfLines = 0;
        PandaIntroducelb.font = [UIFont systemFontOfSize:15];
        [PandaIntroducelb setText:self.pandaModel.PandaMoview_intrduce lineSpacing:RealWidth(5)];
        [WhiteView addSubview:PandaIntroducelb];
        CGSize  pandaSize = [PandaIntroducelb  getSpaceLabelSize:self.pandaModel.PandaMoview_intrduce withFont:[UIFont systemFontOfSize:15] withWidth:GK_SCREEN_WIDTH-RealWidth(20) lineSpacing:RealWidth(5)];
        PandaIntroducelb.size = pandaSize;
       
        
        
        CGSize pandaArticlbSize= [@"演员" cxl_sizeWithString:[UIFont boldSystemFontOfSize:20]];
        PandaMovielb * pandaArticlb = [[PandaMovielb alloc]initWithFrame:CGRectMake(RealWidth(15), RealWidth(15)+CGRectGetMaxY(PandaIntroducelb.frame), pandaArticlbSize.width, RealWidth(30))];
        pandaArticlb.pandaToplb.text = @"演员";
        [WhiteView addSubview:pandaArticlb];
        _pandaArticlb = pandaArticlb;
        [WhiteView addSubview:self.pandaColectioveiws];
        [_pandaColectioveiws reloadData];
        
        CGSize ComentSize= [@"影评" cxl_sizeWithString:[UIFont boldSystemFontOfSize:20]];
        PandaMovielb * pandaComentArticlb = [[PandaMovielb alloc]initWithFrame:CGRectMake(RealWidth(15), RealWidth(15)+CGRectGetMaxY(_pandaColectioveiws.frame), ComentSize.width, RealWidth(30))];
        pandaComentArticlb.pandaToplb.text = @"影评";
        [WhiteView addSubview:pandaComentArticlb];
        
        WhiteView.height = CGRectGetMaxY(pandaComentArticlb.frame)+RealWidth(10);
        pandaContentView.height = CGRectGetMaxY(pandaComentArticlb.frame)+RealWidth(10);
        self.PandaMoviewHeaight = CGRectGetMaxY(pandaComentArticlb.frame)+RealWidth(10);
    }
    return self;
}
- (UICollectionView *)pandaColectioveiws{
    if (!_pandaColectioveiws) {
        UICollectionViewFlowLayout * padnaLayout = [[UICollectionViewFlowLayout alloc]init];
        padnaLayout.itemSize = CGSizeMake(K(80), K(80));
        padnaLayout.scrollDirection =   UICollectionViewScrollDirectionHorizontal;
        padnaLayout.minimumInteritemSpacing = K(4);
        padnaLayout.sectionInset = UIEdgeInsetsMake(K(10), 0, 0, 0);
        _pandaColectioveiws =[[UICollectionView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(_pandaArticlb.frame), SCREEN_Width, K(90)) collectionViewLayout:padnaLayout];
        _pandaColectioveiws.delegate  =self;
        _pandaColectioveiws.dataSource = self;
        _pandaColectioveiws.showsVerticalScrollIndicator = NO;
        _pandaColectioveiws.showsHorizontalScrollIndicator = NO;
        _pandaColectioveiws.backgroundColor = [UIColor clearColor];
        [_pandaColectioveiws registerClass:[PandaMoviewDetailArtoiclCell class] forCellWithReuseIdentifier:@"PandaMoviewDetailArtoiclCell"];
    }
    return _pandaColectioveiws;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.pandaModel.PandaMoview_listArr.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    PandaMoviewDetailArtoiclCell * FilmCoinCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PandaMoviewDetailArtoiclCell" forIndexPath:indexPath];
    FilmCoinCell.FilmDic = self.pandaModel.PandaMoview_listArr[indexPath.row];
    return FilmCoinCell;
}

@end
