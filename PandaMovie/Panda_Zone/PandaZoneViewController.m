//
//  PandaZoneViewController.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/4.
//

#import "PandaZoneViewController.h"
#import "ZLCollectionViewVerticalLayout.h"
#import "PandaZoneCollectionViewCell.h"
#import "PandaZoneModel.h"
#import "JRWaterFallLayout.h"
#import "PandaZoneDetailController.h"
#import "PandaSendZoneToolController.h"
#import <HUPhotoBrowser.h>
@interface PandaZoneViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,JRWaterFallLayoutDelegate,PandaZoneCollectionViewCellDelegate>
@property(nonatomic,strong) UICollectionView * PandaZoneCollectionView;
@property(nonatomic,strong) NSMutableArray   * PandaZoneDataArr;
@end

@implementation PandaZoneViewController
- (NSMutableArray *)PandaZoneDataArr{
    if (!_PandaZoneDataArr) {
        _PandaZoneDataArr = [NSMutableArray array];
    }
    return _PandaZoneDataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"动态";
    [self.view addSubview:self.PandaZoneCollectionView];
    
    
    self.gk_navItemRightSpace = RealWidth(20);
    UIButton * PandaSednBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [PandaSednBtn setImage:[UIImage imageNamed:@"send_icon"] forState:UIControlStateNormal];
    [PandaSednBtn addTarget:self action:@selector(PandaSednBtnClick) forControlEvents:UIControlEventTouchUpInside];
    self.gk_navRightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:PandaSednBtn];
    
    // Do any additional setup after loading the view.
}
-(void)PandaSednBtnClick{
    NSLog(@"%s",__func__);
    
    [[GKNavigationBarConfigure sharedInstance] updateConfigure:^(GKNavigationBarConfigure *configure) {
        configure.backgroundColor =  [UIColor whiteColor];
    }];
    PandaSendZoneToolController * pandasendVc = [[PandaSendZoneToolController alloc]init];
    pandasendVc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:pandasendVc animated:YES];
}
- (UICollectionView *)PandaZoneCollectionView{
    if (!_PandaZoneCollectionView) {
        JRWaterFallLayout * PandaLayout = [[JRWaterFallLayout alloc]init];
        PandaLayout.delegate = self;
        _PandaZoneCollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, NaviH, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-NaviH-GK_TABBAR_HEIGHT) collectionViewLayout:PandaLayout];
        _PandaZoneCollectionView.delegate = self;
        _PandaZoneCollectionView.dataSource = self;
        _PandaZoneCollectionView.showsVerticalScrollIndicator = NO;
        _PandaZoneCollectionView.showsHorizontalScrollIndicator = NO;
        _PandaZoneCollectionView.backgroundColor =  [UIColor clearColor];
        _PandaZoneCollectionView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(PandaZoneCollectionViewClick)];
        [_PandaZoneCollectionView.mj_header beginRefreshing];
        [_PandaZoneCollectionView registerClass:[PandaZoneCollectionViewCell class] forCellWithReuseIdentifier:@"PandaZoneCollectionViewCell"];
    }
    return _PandaZoneCollectionView;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.PandaZoneDataArr.count;
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    PandaZoneCollectionViewCell * pandaCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PandaZoneCollectionViewCell" forIndexPath:indexPath];
    pandaCell.pandaModel = self.PandaZoneDataArr[indexPath.row];
    pandaCell.delegate =  self;
    pandaCell.tag = indexPath.row;
    return pandaCell;
}
#pragma mark--JRWaterFallLayoutDelegate
- (CGFloat)waterFallLayout:(JRWaterFallLayout *)waterFallLayout heightForItemAtIndex:(NSUInteger)index width:(CGFloat)width
{
    PandaZoneModel * zoneModel = self.PandaZoneDataArr[index];
    
    return zoneModel.CellHeight;
    
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    PandaZoneDetailController * PandaZoneDetailVc = [[PandaZoneDetailController alloc]init];
    PandaZoneDetailVc.hidesBottomBarWhenPushed = YES;
    PandaZoneDetailVc.pandaModel = self.PandaZoneDataArr[indexPath.row];
    [self.navigationController pushViewController:PandaZoneDetailVc animated:YES];
}
- (NSUInteger)columnCountOfWaterFallLayout:(JRWaterFallLayout *)waterFallLayout{
    return 2;
}
#pragma mark--PandaZoneCollectionViewCellDelegate
-(void)PandaZoneCollectionViewCellWithIndex:(NSInteger)Index btnIndex:(NSInteger)btnindex{
    PandaZoneModel * pandaModel = self.PandaZoneDataArr[Index];
    if (btnindex == 0) {
        //浏览
        PandaZoneCollectionViewCell * pandaCell = (PandaZoneCollectionViewCell *) [self.PandaZoneCollectionView cellForItemAtIndexPath:[NSIndexPath indexPathWithIndex:Index]];
    [HUPhotoBrowser showFromImageView:pandaCell.PandaZoneThubImgView withURLStrings:pandaModel.imgArr atIndex:0];
    }else if (btnindex == 1){
    //评论
        PandaZoneDetailController * PandaZoneDetailVc = [[PandaZoneDetailController alloc]init];
        PandaZoneDetailVc.hidesBottomBarWhenPushed = YES;
        PandaZoneDetailVc.pandaModel = pandaModel;
        [self.navigationController pushViewController:PandaZoneDetailVc animated:YES];
    }else if (btnindex == 2){
    //点赞
    }else if (btnindex == 3){
    //聊天
    }

}
-(void)PandaZoneCollectionViewClick{
    MJWeakSelf;
    NSArray * pandaDataArr = [WHC_ModelSqlite query:[PandaZoneModel class]];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (weakSelf.PandaZoneDataArr.count > 0) {
            [weakSelf.PandaZoneDataArr removeAllObjects];
        }
        weakSelf.PandaZoneDataArr = pandaDataArr.mutableCopy;
        [CATransaction setDisableActions:YES];
        [weakSelf.PandaZoneCollectionView reloadSections:[NSIndexSet indexSetWithIndex:0]];
        [CATransaction commit];
        [weakSelf.PandaZoneCollectionView.mj_header endRefreshing];
    });
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
