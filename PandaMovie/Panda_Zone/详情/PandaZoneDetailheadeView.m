#import "PandaZoneDetailheadeView.h"
#import <SDCycleScrollView/SDCycleScrollView.h>
#import <HUPhotoBrowser.h>
@interface PandaZoneDetailheadeView ()<SDCycleScrollViewDelegate>
{
    SDCycleScrollView  *  _PandaZoneSDCView;
    UIImageView * _PandaZoneImgView;
}
@property(nonatomic,strong) PandaZoneModel * BianselMode;
@end
@implementation PandaZoneDetailheadeView
-(instancetype)initWithFrame:(CGRect)frame ConfigZoneModel:(PandaZoneModel *)zoneModel{
    if (self = [super initWithFrame:frame]) {
        self.BianselMode = zoneModel;
        self.backgroundColor = LGDLightGaryColor;
        
        UIView * PandaZoneContenView = [[UIView alloc]initWithFrame:CGRectMake(0, K(10), SCREEN_Width, K(40))];
        PandaZoneContenView.backgroundColor = [UIColor whiteColor];
        PandaZoneContenView.userInteractionEnabled = YES;
        [self addSubview:PandaZoneContenView];
        
        UIImageView * PandaZoneContenImgView  = [[UIImageView alloc]initWithFrame:CGRectMake(K(17.5), K(17), K(34), K(34))];
        PandaZoneContenImgView.layer.cornerRadius = K(17);
        PandaZoneContenImgView.layer.masksToBounds = YES;
        [PandaZoneContenImgView setBackgroundColor:LGDLightGaryColor];
        [PandaZoneContenView addSubview:PandaZoneContenImgView];
        [PandaZoneContenImgView sd_setImageWithURL:[NSURL URLWithString:zoneModel.imgurl]];
        
        UILabel * PandaZoneContenTitle =[[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(PandaZoneContenImgView.frame)+K(5), CGRectGetMinY(PandaZoneContenImgView.frame)+K(0), K(200), K(20))];
        PandaZoneContenTitle.textColor = LGDBLackColor;
        PandaZoneContenTitle.font =  KBlFont(14);
        PandaZoneContenTitle.text =  @"木椅点";
        [PandaZoneContenView addSubview:PandaZoneContenTitle];
        PandaZoneContenTitle.text = zoneModel.username;
        
        UILabel * PandaZoneContenTimelb =[[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(PandaZoneContenImgView.frame)+K(5), CGRectGetMaxY(PandaZoneContenTitle.frame)+K(2), K(200), K(14))];
        PandaZoneContenTimelb.textColor = LGDGaryColor;
        PandaZoneContenTimelb.font =  KSysFont(10);
        PandaZoneContenTimelb.text =  @"17分钟前";
        [PandaZoneContenView addSubview:PandaZoneContenTimelb];
        PandaZoneContenTimelb.text =  zoneModel.time;
        
        UIButton * PandaZonelaheiBtn = [[UIButton alloc]initWithFrame:CGRectMake(SCREEN_Width-K(65), CGRectGetMidY(PandaZoneContenImgView.frame)-K(10), K(50), K(20))];
        //        /PandaZonelaheiBtn.BIanBtomlb.text = @"拉黑";
        PandaZonelaheiBtn.layer.cornerRadius = K(5);
        PandaZonelaheiBtn.layer.masksToBounds = YES;
        PandaZonelaheiBtn.titleLabel.font = [UIFont systemFontOfSize:12];
        [PandaZonelaheiBtn setBackgroundColor:LGDMianColor];
        PandaZonelaheiBtn.tag = 0;
        [PandaZonelaheiBtn setTitle:@"拉黑" forState:UIControlStateNormal];
        [PandaZonelaheiBtn addTarget:self action:@selector(jubaodExperDetailBtnClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [PandaZoneContenView addSubview:PandaZonelaheiBtn];
        
        
        UIButton * PandaZonejuaoBtn = [[UIButton alloc]initWithFrame:CGRectMake(CGRectGetMinX(PandaZonelaheiBtn.frame)-K(60), CGRectGetMidY(PandaZoneContenImgView.frame)-K(10), K(50), K(20))];
        PandaZonejuaoBtn.tag = 1;
        PandaZonejuaoBtn.layer.cornerRadius = K(5);
        PandaZonejuaoBtn.layer.masksToBounds = YES;
        PandaZonejuaoBtn.titleLabel.font = [UIFont systemFontOfSize:12];
        [PandaZonejuaoBtn setBackgroundColor:[UIColor redColor]];
        [PandaZonejuaoBtn addTarget:self action:@selector(jubaodExperDetailBtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [PandaZonejuaoBtn setTitle:@"举报" forState:UIControlStateNormal];
        
        
        [PandaZoneContenView addSubview:PandaZonejuaoBtn];
        
        
        UILabel * PandaZoneDesclb =[[UILabel alloc]initWithFrame:CGRectMake(K(15), CGRectGetMaxY(PandaZoneContenImgView.frame)+K(5), K(200), K(14))];
        PandaZoneDesclb.textColor = [UIColor colorWithHexString:@"#333333"];
        PandaZoneDesclb.font =  KSysFont(12);
        PandaZoneDesclb.numberOfLines = 0;
        [PandaZoneContenView addSubview:PandaZoneDesclb];
        [PandaZoneDesclb setText:zoneModel.content lineSpacing:K(3)];
        
        PandaZoneDesclb.size =  [PandaZoneDesclb getSpaceLabelSize:zoneModel.content withFont:[UIFont systemFontOfSize:12] withWidth:SCREEN_Width-K(30) lineSpacing:K(3)];
        
        
        
        UIImageView * PandaZoneImgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(PandaZoneDesclb.frame)+K(8), SCREEN_Width-K(30), K(135))];
        PandaZoneImgView.userInteractionEnabled = YES;
        PandaZoneImgView.backgroundColor = [UIColor clearColor];
        [PandaZoneContenView addSubview:PandaZoneImgView];
        
        
        SDCycleScrollView  *  PandaZoneSDCView = [[SDCycleScrollView alloc]initWithFrame:CGRectMake(K(15), CGRectGetMaxY(PandaZoneDesclb.frame)+K(8), SCREEN_Width-K(30), K(180))];
        PandaZoneSDCView.imageURLStringsGroup = zoneModel.imgArr;
        PandaZoneSDCView.backgroundColor =  LGDLightGaryColor;
        PandaZoneSDCView.delegate = self;
        [PandaZoneContenView addSubview:PandaZoneSDCView];
        _PandaZoneSDCView = PandaZoneSDCView;
        
        PandaZoneContenView.height = CGRectGetMaxY(PandaZoneSDCView.frame)+K(20);
        
        self.PandaZoneHeaderHeight = CGRectGetMaxY(PandaZoneContenView.frame)+K(10);
        
        _PandaZoneImgView = PandaZoneImgView;
        
        
    }
    return self;
}
- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index{
    [HUPhotoBrowser showFromImageView:_PandaZoneImgView withURLStrings:self.BianselMode.imgArr.copy atIndex:0];
}
-(void)jubaodExperDetailBtnClick:(UIButton * )filmBtn{
    [self.delegate FilmFacorryZoneDetailheaderWithBtnIndex:filmBtn.tag];
}
@end

