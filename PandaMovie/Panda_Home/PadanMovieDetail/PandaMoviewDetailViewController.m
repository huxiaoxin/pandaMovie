//
//  PandaMoviewDetailViewController.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/19.
//

#import "PandaMoviewDetailViewController.h"
#import "PandaMoviewStarViews.h"
#import "PandaMoviewDetrailHeader.h"
#import "PandaMoviewDetailTableViewCell.h"
#import <XHInputView/XHInputView.h>
@interface PandaMoviewDetailViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong) UIImageView * PandaMoviewBackImgView;
@property(nonatomic,strong) UIImageView * PandaLogoImgView;
@property(nonatomic,strong) UILabel     * PandaTitle;
@property(nonatomic,strong) UILabel     * PandaInfolb;
@property(nonatomic,strong) UILabel     * PandaDeeplb;

@property(nonatomic,strong) UIButton    * PandaWantWatch;
@property(nonatomic,strong) UIButton    * PandaWatched;
@property(nonatomic,strong) PandaMoviewStarViews      * pandaStaViews;
@property(nonatomic,strong) PandaMoviewDetrailHeader  * pandaHeader;
@property(nonatomic,strong) UITableView               * PandaDetailTableView;
@property(nonatomic,strong) NSMutableArray            * PandaHotDataArr;
@end

@implementation PandaMoviewDetailViewController
- (NSMutableArray *)PandaHotDataArr{
    if (!_PandaHotDataArr) {
        _PandaHotDataArr = [NSMutableArray array];
    }
    return _PandaHotDataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navBarAlpha = 0;
    [self.view addSubview:self.PandaMoviewBackImgView];

    [self  PandaRealodaDataWithisShow:YES];
    
    UIButton * PandaRightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [PandaRightBtn setImage:[UIImage imageNamed:@"pinglun"] forState:UIControlStateNormal];
    [PandaRightBtn addTarget:self action:@selector(PandaRightBtnClick) forControlEvents:UIControlEventTouchUpInside];
    self.gk_navItemRightSpace = RealWidth(25);
    self.gk_navRightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:PandaRightBtn];
    
  
      
    // Do any additional setup after loading the view.
}
-(void)PandaRightBtnClick{
    if (![PandaMovieLoginAccoutModel PandaMoviewuserIsLogin]) {
        [self PandanShowLoginVc];
        return;
    }
    
    MJWeakSelf;
    [XHInputView showWithStyle:InputViewStyleLarge configurationBlock:^(XHInputView *inputView) {
        inputView.sendButtonBackgroundColor =  LGDMianColor;
        inputView.sendButtonTitle = @"发送";
    } sendBlock:^BOOL(NSString *text) {
        if (text.length == 0) {
            [LCProgressHUD showInfoMsg:@"请输入评论"];
            return NO;
        }else{
            [weakSelf PandaSendHotComentWitrh:text];
            return YES;
        }
    }];
    
    
}
-(void)PandaWantWatchClick:(UIButton *)watchbtn{
    if (![PandaMovieLoginAccoutModel PandaMoviewuserIsLogin]) {
        [self PandanShowLoginVc];
        return;
    }
   
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD hide];
        watchbtn.selected = !watchbtn.selected;
        [WHC_ModelSqlite update:[PandaMovieModel class] value:[NSString stringWithFormat:@"iswantWatching = '%@'",@(watchbtn.selected)] where:[NSString stringWithFormat:@"FilmID = '%ld'",self.padaItem.PandaMovie_ID]];
    });
}
-(NSString*)getCurrentTimes{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    NSDate *datenow = [NSDate date];
    NSString *currentTimeString = [formatter stringFromDate:datenow];
    return currentTimeString;
}
-(void)PandaSendHotComentWitrh:(NSString *)Text{
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD showSuccess:@"评论成功"];
        PandaMoviewHotComentModel * pandItem  =[[PandaMoviewHotComentModel alloc]init];
        pandItem.imgurl = @"https://p.qqan.com/up/2021-4/16194921988015974.jpg";
        pandItem.name = [PandaMovieLoginAccoutModel PandaMoViewgetuserName];
        pandItem.time = [self getCurrentTimes];
        pandItem.content  = Text;
        pandItem.FilmID = self.padaItem.PandaMovie_ID;
        pandItem.ComentID = (self.PandaHotDataArr.count+1);
        pandItem.CellHeight = 0;
        [WHC_ModelSqlite  insert:pandItem];
        [self.PandaHotDataArr addObject:pandItem];
        [self.PandaDetailTableView reloadData];
    });
 
}
-(void)PandaRealodaDataWithisShow:(BOOL)isShow{
    
    if (isShow) {
        [LCProgressHUD showLoading:@""];
    }

    NSArray * dataArr = [WHC_ModelSqlite query:[PandaMoviewHotComentModel class] where:[NSString stringWithFormat:@"FilmID ='%ld'",self.padaItem.PandaMovie_ID]];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        _PandaMoviewBackImgView.image  = [UIImage imageNamed:@"maoboli"];
        UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0,_PandaMoviewBackImgView.size.width, _PandaMoviewBackImgView.size.height)];
        toolbar.barStyle = UIBarStyleBlackOpaque;
        [_PandaMoviewBackImgView addSubview:toolbar];
        [_PandaMoviewBackImgView addSubview:self.PandaLogoImgView];
        [_PandaMoviewBackImgView addSubview:self.PandaTitle];
        [_PandaMoviewBackImgView addSubview:self.PandaInfolb];
        [_PandaMoviewBackImgView addSubview:self.PandaDeeplb];
        [_PandaMoviewBackImgView addSubview:self.PandaWantWatch];
//        [_PandaMoviewBackImgView addSubview:self.PandaWatched];
        [_PandaMoviewBackImgView addSubview:self.pandaStaViews];
        [self.view addSubview:self.PandaDetailTableView];
        self.pandaHeader.height = self.pandaHeader.PandaMoviewHeaight;
        _PandaDetailTableView.tableHeaderView = self.pandaHeader;
        [LCProgressHUD hide];
        if (self.PandaHotDataArr.count > 0) {
            [self.PandaHotDataArr removeAllObjects];
        }

        self.PandaHotDataArr = dataArr.mutableCopy;
        [self.PandaDetailTableView reloadData];
    });
}
- (PandaMoviewDetrailHeader *)pandaHeader{
    if (!_pandaHeader) {
        _pandaHeader = [[PandaMoviewDetrailHeader alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, 100) ConfiguractionWith:self.padaItem];
    }
    return _pandaHeader;
}
- (UITableView *)PandaDetailTableView{
    if (!_PandaDetailTableView) {
        _PandaDetailTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(_PandaMoviewBackImgView.frame)-RealWidth(20), GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-CGRectGetMaxY(_PandaMoviewBackImgView.frame)-RealWidth(20)) style:UITableViewStylePlain];
        _PandaDetailTableView.delegate = self;
        _PandaDetailTableView.dataSource = self;
        _PandaDetailTableView.showsVerticalScrollIndicator = NO;
        _PandaDetailTableView.showsHorizontalScrollIndicator = NO;
        _PandaDetailTableView.backgroundColor = [UIColor clearColor];
    }
    return _PandaDetailTableView;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PandaHotDataArr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * PandaIdentifer = @"PandaMoviewDetailTableViewCell";
    PandaMoviewDetailTableViewCell * pandaCell = [tableView dequeueReusableCellWithIdentifier:PandaIdentifer];
    if (pandaCell == nil) {
        pandaCell = [[PandaMoviewDetailTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:PandaIdentifer];
    }
    pandaCell.pandaHotModel = self.PandaHotDataArr[indexPath.row];
    return pandaCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    PandaMoviewHotComentModel * pandModel = self.PandaHotDataArr[indexPath.row];
    return pandModel.CellHeight;
}

- (PandaMoviewStarViews *)pandaStaViews{
    if (!_pandaStaViews) {
        _pandaStaViews = [[PandaMoviewStarViews alloc]initWithFrame:CGRectMake(K(15), MAX(CGRectGetMaxY(_PandaLogoImgView.frame)+K(15), CGRectGetMaxY(_PandaWatched.frame)+RealWidth(10)), SCREEN_Width-K(30), K(110))];
        _pandaStaViews.backgroundColor = [UIColor colorWithHexString:@"#FFFFFF" Alpha:0.16];
        _pandaStaViews.layer.cornerRadius = K(5);
        _pandaStaViews.layer.masksToBounds = YES;
        _pandaStaViews.pandmoviitem = self.padaItem;
    }
    return _pandaStaViews;
}
- (UIImageView *)PandaMoviewBackImgView{
    if (!_PandaMoviewBackImgView) {
        _PandaMoviewBackImgView =  [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(455))];
        _PandaMoviewBackImgView.userInteractionEnabled = YES;
  
    }
    return _PandaMoviewBackImgView;
}
- (UIImageView *)PandaLogoImgView{
    if (!_PandaLogoImgView) {
        _PandaLogoImgView = [[UIImageView alloc]initWithFrame:CGRectMake(RealWidth(16), NaviH+RealWidth(20), RealWidth(110), RealWidth(150))];
        [_PandaLogoImgView sd_setImageWithURL:[NSURL URLWithString:self.padaItem.pandaMoiveThuburl] placeholderImage:[UIImage imageNamed:@"zhanweitu"]];
    }
    return _PandaLogoImgView;
}
- (UILabel *)PandaTitle{
    if (!_PandaTitle) {
        _PandaTitle =  [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaLogoImgView.frame)+RealWidth(10), CGRectGetMinY(_PandaLogoImgView.frame)+RealWidth(10), GK_SCREEN_WIDTH-CGRectGetMaxX(_PandaLogoImgView.frame)-RealWidth(15), RealWidth(25))];
        _PandaTitle.textColor = [UIColor whiteColor];
        _PandaTitle.font = [UIFont  boldSystemFontOfSize:25];
        _PandaTitle.text = self.padaItem.PandaMoviewName;
    }
    return _PandaTitle;
}
- (UILabel *)PandaInfolb{
    if (!_PandaInfolb) {
        _PandaInfolb =  [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaLogoImgView.frame)+RealWidth(10), CGRectGetMaxY(_PandaTitle.frame)+RealWidth(10), GK_SCREEN_WIDTH-CGRectGetMaxX(_PandaLogoImgView.frame)-RealWidth(15), RealWidth(17))];
        _PandaInfolb.textColor = [UIColor whiteColor];
        _PandaInfolb.font = [UIFont  boldSystemFontOfSize:17];
        _PandaInfolb.text = self.padaItem.PandaMoviewengishName;
    }
    return _PandaInfolb;
}
- (UILabel *)PandaDeeplb{
    if (!_PandaDeeplb) {
        CGRect  pandaDeepSize = [self.padaItem.PandaMoviewArtiss cxl_sizeWithMoreString:[UIFont boldSystemFontOfSize:17] maxWidth:GK_SCREEN_WIDTH-CGRectGetMaxX(_PandaLogoImgView.frame)-RealWidth(20)];
        _PandaDeeplb =  [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaLogoImgView.frame)+RealWidth(10), CGRectGetMaxY(_PandaInfolb.frame)+RealWidth(10), pandaDeepSize.size.width, pandaDeepSize.size.height)];
        _PandaDeeplb.numberOfLines = 0;
        _PandaDeeplb.textColor = [UIColor whiteColor];
        _PandaDeeplb.font = [UIFont  boldSystemFontOfSize:17];
        _PandaDeeplb.text = self.padaItem.PandaMoviewArtiss;
    }
    return _PandaDeeplb;
}
- (UIButton *)PandaWantWatch{
    if (!_PandaWantWatch) {
        _PandaWantWatch = [[UIButton alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaLogoImgView.frame)+RealWidth(10), CGRectGetMaxY(_PandaDeeplb.frame)+RealWidth(16), RealWidth(60), RealWidth(30))];
        _PandaWantWatch.layer.cornerRadius = RealWidth(15);
        _PandaWantWatch.layer.masksToBounds = YES;
        [_PandaWantWatch setBackgroundColor:[UIColor colorWithHexString:@"#FFFFFF" Alpha:0.2]];
        [_PandaWantWatch setTitle:@"想看" forState:UIControlStateNormal];
        [_PandaWantWatch setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _PandaWantWatch.titleLabel.font = [UIFont systemFontOfSize:13];
     
        [_PandaWantWatch setImage:[UIImage imageNamed:@"xiangkan"] forState:UIControlStateNormal];
        [_PandaWantWatch setImage:[UIImage imageNamed:@"xiangkan-sel"] forState:UIControlStateSelected];
        if ([PandaMovieLoginAccoutModel PandaMoviewuserIsLogin]) {
            if (self.padaItem.iswantWatching) {
                _PandaWantWatch.selected = YES;
            }else{
                _PandaWantWatch.selected = NO;
            }
        }else{
            _PandaWantWatch.selected = NO;
        }
        [_PandaWantWatch setImageEdgeInsets:UIEdgeInsetsMake(0, -2, 0, 2)];
        [_PandaWantWatch setTitleEdgeInsets:UIEdgeInsetsMake(0, 2, 0,-2)];
        [_PandaWantWatch addTarget:self action:@selector(PandaWantWatchClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PandaWantWatch;
}
- (UIButton *)PandaWatched{
    if (!_PandaWatched) {
        _PandaWatched = [[UIButton alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaWantWatch.frame)+RealWidth(10), CGRectGetMaxY(_PandaDeeplb.frame)+RealWidth(16), RealWidth(60), RealWidth(30))];
        _PandaWatched.layer.cornerRadius = RealWidth(15);
        _PandaWatched.layer.masksToBounds = YES;
        [_PandaWatched setBackgroundColor:[UIColor colorWithHexString:@"#FFFFFF" Alpha:0.2]];
        [_PandaWatched setTitle:@"看过" forState:UIControlStateNormal];
        [_PandaWatched setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _PandaWatched.titleLabel.font = [UIFont systemFontOfSize:13];
        [_PandaWatched setImage:[UIImage imageNamed:@"xiangkan"] forState:UIControlStateNormal];
        [_PandaWatched setImageEdgeInsets:UIEdgeInsetsMake(0, -2, 0, 2)];
        [_PandaWatched setTitleEdgeInsets:UIEdgeInsetsMake(0, 2, 0,-2)];
    }
    return _PandaWatched;
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
