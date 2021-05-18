#import "PandaSendZoneToolController.h"
#import <UITextView+ZWPlaceHolder.h>
#import <UITextView+ZWLimitCounter.h>
#import "PandaSedZoneCollectionCell.h"
#import <HUPhotoBrowser-umbrella.h>
#import <RITLPhotos/RITLPhotos.h>

@interface PandaSendZoneToolController ()<UICollectionViewDelegate,UICollectionViewDataSource,RITLPhotosViewControllerDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>
@property(nonatomic,strong) UICollectionView * PandaZendCollectionView;
@property(nonatomic,strong) NSMutableArray * PandaZendDataArr;
@property(nonatomic,strong) UITextView * PandaZendTextView;
@property(nonatomic,strong) UIImagePickerController *PandaZendPicker;
@end

@implementation PandaSendZoneToolController

-(NSMutableArray *)PandaZendDataArr{
    if (!_PandaZendDataArr) {
        _PandaZendDataArr = [[NSMutableArray alloc]init];
        [_PandaZendDataArr addObject:[UIImage imageNamed:@"pandaAddphoto"]];
    }
    return _PandaZendDataArr;
    //
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navLineHidden = YES;
    self.view.backgroundColor = [UIColor whiteColor];
    UIView * PandaZendCancleView =[[UIView alloc]initWithFrame:CGRectMake(0, 0, K(80), K(40))];
    UIButton * PandaZendCancleBtn = [[UIButton alloc]initWithFrame:CGRectMake(K(15), K(5), K(40), K(20))];
    [PandaZendCancleBtn setTitle:@"取消" forState:UIControlStateNormal];
    PandaZendCancleBtn.titleLabel.font =[UIFont systemFontOfSize:14];
    [PandaZendCancleBtn setTitleColor:LGDGaryColor forState:UIControlStateNormal];
    [PandaZendCancleBtn addTarget:self action:@selector(PandaZendCancleBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [PandaZendCancleView addSubview:PandaZendCancleBtn];
    self.gk_navLeftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:PandaZendCancleView];
    
    //    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:PandaZendCancleView];
    
    
    UIView * PandaZendSureView =[[UIView alloc]initWithFrame:CGRectMake(0, 0, K(80), K(40))];
    UIButton * PandaZendSureBtn = [[UIButton alloc]initWithFrame:CGRectMake(K(15), K(5), K(40), K(20))];
    [PandaZendSureBtn setTitle:@"发布" forState:UIControlStateNormal];
    PandaZendSureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    [PandaZendSureBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [PandaZendSureBtn addTarget:self action:@selector(PandaZendSureBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [PandaZendSureView addSubview:PandaZendSureBtn];
    self.gk_navRightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:PandaZendSureView];
    //    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:PandaZendSureView];
    
    
    UITextView * PandaZendTextView = [[UITextView alloc]initWithFrame:CGRectMake(K(15), K(15), SCREEN_Width-K(20), K(120))];
    PandaZendTextView.zw_placeHolder = @"说点什么吧....";
    PandaZendTextView.zw_placeHolderColor = LGDGaryColor;
    PandaZendTextView.font = [UIFont systemFontOfSize:14];
    PandaZendTextView.textColor = [UIColor blackColor];
    PandaZendTextView.zw_limitCount =  1500;
    [self.view addSubview:PandaZendTextView];
    _PandaZendTextView = PandaZendTextView;
    
    
    
    UICollectionViewFlowLayout * PandaZendLayout = [[UICollectionViewFlowLayout alloc]init];
    PandaZendLayout.sectionInset =  UIEdgeInsetsMake(0, K(15), 0, K(30));
    PandaZendLayout.itemSize  = CGSizeMake(K(100), K(100));
    UICollectionView * PandaZendCollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(PandaZendTextView.frame)+K(20), SCREEN_Width, K(200)) collectionViewLayout:PandaZendLayout];
    PandaZendCollectionView.delegate = self;
    PandaZendCollectionView.dataSource = self;
    PandaZendCollectionView.showsVerticalScrollIndicator = NO;
    PandaZendCollectionView.showsHorizontalScrollIndicator = NO;
    PandaZendCollectionView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:PandaZendCollectionView];
    [PandaZendCollectionView registerClass:[PandaSedZoneCollectionCell class] forCellWithReuseIdentifier:@"PandaSedZoneCollectionCell"];
    _PandaZendCollectionView = PandaZendCollectionView;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.PandaZendDataArr.count;
}
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    PandaSedZoneCollectionCell * PandaZendCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PandaSedZoneCollectionCell" forIndexPath:indexPath];
    PandaZendCell.PandaImgView.image = self.PandaZendDataArr[indexPath.row];
    return PandaZendCell;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    PandaSedZoneCollectionCell * PandaZendCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PandaSedZoneCollectionCell" forIndexPath:indexPath];
    if (indexPath.row == self.PandaZendDataArr.count -1) {
        [self PandaLoadPhotoContorls];
    }else{
        NSMutableArray * PandaZenditem = self.PandaZendDataArr;
        [PandaZenditem removeLastObject];
        [HUPhotoBrowser showFromImageView:PandaZendCell.PandaImgView withImages:PandaZenditem atIndex:indexPath.row];
    }
    
}
- (void)photosViewController:(UIViewController *)viewController
                      images:(NSArray <UIImage *> *)images
                       infos:(NSArray <NSDictionary *> *)infos{
    [self.PandaZendDataArr addObjectsFromArray:images];
    MJWeakSelf;
    [self.PandaZendDataArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        UIImage * PandaZendImg = (UIImage *)obj;
        if (PandaZendImg == [UIImage imageNamed:@"pandaAddphoto"]) {
            [weakSelf.PandaZendDataArr removeObject:PandaZendImg];
            *stop = YES;
        }
    }];
    [self.PandaZendDataArr addObject:[UIImage imageNamed:@"pandaAddphoto"]];
    [self.PandaZendCollectionView reloadData];
    self.PandaZendCollectionView.height = self.PandaZendCollectionView.collectionViewLayout.collectionViewContentSize.height;
}

-(UIImagePickerController *)PandaZendPicker{
    if (!_PandaZendPicker) {
        _PandaZendPicker = [[UIImagePickerController alloc] init];
        _PandaZendPicker.delegate = self;
        _PandaZendPicker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
        _PandaZendPicker.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
        _PandaZendPicker.allowsEditing = YES;
    }
    return _PandaZendPicker;
}
-(void)PandaLoadPhotoContorls{
    NSString *mediaType = AVMediaTypeVideo;
    AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:mediaType];
    if(authStatus == AVAuthorizationStatusRestricted || authStatus == AVAuthorizationStatusDenied){
        NSString *errorStr = @"应用相机权限受限,请在设置中启用";
        [LCProgressHUD showInfoMsg:errorStr];
        return;
    }
    RITLPhotosViewController *rilvc = RITLPhotosViewController.photosViewController;
    rilvc.configuration.maxCount = 5;
    rilvc.configuration.containVideo = false;
    rilvc.photo_delegate = self;
    [self presentViewController:rilvc animated:true completion:^{}];
}

#pragma mark--发布
-(void)PandaZendSureBtnClick{
    if (_PandaZendTextView.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"说点什么吧~"];
        return;
    }
    
    //    if ([FilmFactoryAccountComponent checkLogin:YES]) {
    //        [LCProgressHUD showLoading:@""];
    //        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    //            [LCProgressHUD showSuccess:@"发布成功,请等待平台审核后显示!"];
    //            [self dismissViewControllerAnimated:YES completion:nil];
    //        });
    //
    //    }
    
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD showSuccess:@"发布成功,请等待平台审核后显示!"];
        [self dismissViewControllerAnimated:YES completion:nil];
    });
}
-(void)PandaZendCancleBtnClick{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)viewWillDisappear:(BOOL)animated{
    [[GKNavigationBarConfigure sharedInstance] updateConfigure:^(GKNavigationBarConfigure *configure) {
        configure.backgroundColor =  LGDViewBJColor;
        configure.backgroundColor =  LGDViewBJColor;
    }];
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


