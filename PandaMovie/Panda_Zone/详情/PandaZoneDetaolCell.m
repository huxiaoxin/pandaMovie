
#import "PandaZoneDetaolCell.h"
@interface PandaZoneDetaolCell ()
@property(nonatomic,strong)  UIImageView * PandaZoneuserImgView;
@property(nonatomic,strong) UILabel *  PandaZonenamelb;
@property(nonatomic,strong) UILabel *  PandaZoneTimelb;
@property(nonatomic,strong) UILabel *  PandaZoneContelb;
@property(nonatomic,strong) UIButton *  PandaZoneDeepbtn;
@property(nonatomic,strong) UIView   * PandaZonebtomline;
@property(nonatomic,strong) UIView   * PandaContetnView;
@end
@implementation PandaZoneDetaolCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor =[UIColor clearColor];
        [self.contentView addSubview:self.PandaContetnView];
        
        
        UIImageView * PandaZoneuserImgView = [[UIImageView alloc]initWithFrame:CGRectMake(K(15.5), RealWidth(10), K(41), K(41))];
        PandaZoneuserImgView.backgroundColor = LGDLightGaryColor;
        PandaZoneuserImgView.layer.cornerRadius = K(3);
        PandaZoneuserImgView.layer.masksToBounds = YES;
        [_PandaContetnView addSubview:PandaZoneuserImgView];
        _PandaZoneuserImgView = PandaZoneuserImgView;
        
        
        UILabel *  PandaZonenamelb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(PandaZoneuserImgView.frame)+K(5), CGRectGetMinY(PandaZoneuserImgView.frame), K(200), K(21))];
        PandaZonenamelb.textColor =  [UIColor whiteColor];
        PandaZonenamelb.font = KBlFont(15);
        PandaZonenamelb.text = @"";
        [_PandaContetnView addSubview:PandaZonenamelb];
        _PandaZonenamelb= PandaZonenamelb;
        
        
        UILabel *  PandaZoneTimelb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(PandaZoneuserImgView.frame)+K(5), CGRectGetMaxY(PandaZonenamelb.frame)+K(5), K(200), K(15))];
        PandaZoneTimelb.textColor =  [UIColor whiteColor];
        PandaZoneTimelb.font = KSysFont(11);
        PandaZoneTimelb.text = @"2020-10-20 13:00:00";
        [_PandaContetnView addSubview:PandaZoneTimelb];
        _PandaZoneTimelb = PandaZoneTimelb;
        
        
        UILabel *  PandaZoneContelb = [[UILabel alloc]initWithFrame:CGRectMake(K(15.5), CGRectGetMaxY(PandaZoneuserImgView.frame)+K(14), K(200), K(15))];
        PandaZoneContelb.textColor =  [UIColor whiteColor];
        PandaZoneContelb.font = KSysFont(15);
        PandaZoneContelb.numberOfLines = 0;
        PandaZoneContelb.text = @"非常好，下次还会再来";
        [_PandaContetnView addSubview:PandaZoneContelb];
        _PandaZoneContelb = PandaZoneContelb;
        
        
        
        UIButton *  PandaZoneDeepbtn   = [[UIButton alloc]initWithFrame:CGRectMake(SCREEN_Width-K(36+30+30), K(15), K(50), K(20))];
        PandaZoneDeepbtn.tag = 0;
        PandaZoneDeepbtn.layer.cornerRadius = K(5);
        PandaZoneDeepbtn.layer.masksToBounds = YES;
        PandaZoneDeepbtn.titleLabel.font = [UIFont systemFontOfSize:12];
        [PandaZoneDeepbtn setBackgroundColor:LGDMianColor];
        [PandaZoneDeepbtn setTitle:@"拉黑" forState:UIControlStateNormal];
        [PandaZoneDeepbtn addTarget:self action:@selector(PandaZoneDeepbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        
        
        
        [_PandaContetnView addSubview:PandaZoneDeepbtn];
        _PandaZoneDeepbtn = PandaZoneDeepbtn;
        
        
        UIButton *  PandaZoneJugbaoBtn   = [[UIButton alloc]initWithFrame:CGRectMake(CGRectGetMinX(PandaZoneDeepbtn.frame)-K(60), K(15), K(50), K(20))];
        PandaZoneJugbaoBtn.tag = 1;
        PandaZoneJugbaoBtn.layer.cornerRadius = K(5);
        PandaZoneJugbaoBtn.layer.masksToBounds = YES;
        PandaZoneJugbaoBtn.titleLabel.font = [UIFont systemFontOfSize:12];
        [PandaZoneJugbaoBtn setBackgroundColor:[UIColor redColor]];
        [PandaZoneJugbaoBtn setTitle:@"举报" forState:UIControlStateNormal];
        [PandaZoneJugbaoBtn addTarget:self action:@selector(PandaZoneDeepbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [_PandaContetnView addSubview:PandaZoneJugbaoBtn];
        
        UIView * PandaZonebtomline = [[UIView alloc]initWithFrame:CGRectMake(K(15.5), CGRectGetMaxY(PandaZoneContelb.frame)+K(14), SCREEN_Width-K(31), K(0.5))];
        PandaZonebtomline.backgroundColor = [UIColor clearColor];
        [_PandaContetnView addSubview:PandaZonebtomline];
        _PandaZonebtomline = PandaZonebtomline;
        
        
        
    }
    return self;
}
- (UIView *)PandaContetnView{
    if (!_PandaContetnView) {
        _PandaContetnView = [[UIView alloc]initWithFrame:CGRectMake(RealWidth(10), RealWidth(10), GK_SCREEN_WIDTH-RealWidth(20), RealWidth(10))];
        _PandaContetnView.layer.cornerRadius = RealWidth(5);
        _PandaContetnView.layer.masksToBounds = YES;
        _PandaContetnView.backgroundColor = [UIColor colorWithHexString:@"292945"];
    }
    return _PandaContetnView;
}
-(void)PandaZoneDeepbtnClick:(UIButton *)btn{
    [self.delegate  PandaZoneDetaolCellZoneDetiaCellDetailTableViewCellWithIndex:self.tag PandaZoneDetaolCellZoneDetiaCellbtnTag:btn.tag];
}
- (void)setComentModel:(PandaComentListModel *)comentModel{
    _comentModel = comentModel;
    [_PandaZoneuserImgView sd_setImageWithURL:[NSURL URLWithString:comentModel.imgurl]];
    _PandaZonenamelb.text = comentModel.name;
    _PandaZoneTimelb.text =  comentModel.time;
    _PandaZoneContelb.text =  comentModel.content;
    _PandaZoneContelb.size = [comentModel.content cxl_sizeWithMoreString:KSysFont(15) maxWidth:SCREEN_Width-K(31+20)].size;
    _PandaZonebtomline.mj_y = CGRectGetMaxY(_PandaZoneContelb.frame)+K(20);
    _PandaContetnView.height =  CGRectGetMaxY(_PandaZonebtomline.frame)+RealWidth(0);
    comentModel.CellHeight = CGRectGetMaxY(_PandaContetnView.frame)+RealWidth(10);
}
//- (void)setFilmShangyinModel:(PandaZoneModel *)filmShangyinModel{
//    _filmShangyinModel = filmShangyinModel;
//    [_PandaZoneuserImgView sd_setImageWithURL:[NSURL URLWithString:filmShangyinModel.imgurl]];
//    _PandaZonenamelb.text = filmShangyinModel.name;
//    _PandaZoneTimelb.text =  filmShangyinModel.time;
//    _PandaZoneContelb.text =  filmShangyinModel.content;
//    _PandaZoneContelb.size = [filmShangyinModel.content cxl_sizeWithMoreString:KSysFont(15) maxWidth:SCREEN_Width-K(31)].size;
//    
//    _PandaZonebtomline.mj_y = CGRectGetMaxY(_PandaZoneContelb.frame)+K(20);
//    filmShangyinModel.CellHeight = CGRectGetMaxY(_PandaZonebtomline.frame);
//}
-(void)PandaZoneDeepbtnClick{
    
}
-(void)PandaZoneJugbaoBtnClick{
    
}
@end
