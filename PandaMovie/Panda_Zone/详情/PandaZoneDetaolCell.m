
#import "PandaZoneDetaolCell.h"
@interface PandaZoneDetaolCell ()
@property(nonatomic,strong)  UIImageView * PandaZoneuserImgView;
@property(nonatomic,strong) UILabel *  PandaZonenamelb;
@property(nonatomic,strong) UILabel *  PandaZoneTimelb;
@property(nonatomic,strong) UILabel *  PandaZoneContelb;
@property(nonatomic,strong) UIButton *  PandaZoneDeepbtn;
@property(nonatomic,strong) UIView   * PandaZonebtomline;
@end
@implementation PandaZoneDetaolCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        UIImageView * PandaZoneuserImgView = [[UIImageView alloc]initWithFrame:CGRectMake(K(15.5), 0, K(41), K(41))];
        PandaZoneuserImgView.backgroundColor = LGDLightGaryColor;
        PandaZoneuserImgView.layer.cornerRadius = K(3);
        PandaZoneuserImgView.layer.masksToBounds = YES;
        [self.contentView addSubview:PandaZoneuserImgView];
        _PandaZoneuserImgView = PandaZoneuserImgView;
        
        
        UILabel *  PandaZonenamelb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(PandaZoneuserImgView.frame)+K(5), CGRectGetMinY(PandaZoneuserImgView.frame), K(200), K(21))];
        PandaZonenamelb.textColor =  [UIColor blackColor];
        PandaZonenamelb.font = KBlFont(15);
        PandaZonenamelb.text = @"食客7894";
        [self.contentView addSubview:PandaZonenamelb];
        _PandaZonenamelb= PandaZonenamelb;
        
        
        UILabel *  PandaZoneTimelb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(PandaZoneuserImgView.frame)+K(5), CGRectGetMaxY(PandaZonenamelb.frame)+K(5), K(200), K(15))];
        PandaZoneTimelb.textColor =  [UIColor colorWithHexString:@"#888888"];
        PandaZoneTimelb.font = KSysFont(11);
        PandaZoneTimelb.text = @"2020-10-20 13:00:00";
        [self.contentView addSubview:PandaZoneTimelb];
        _PandaZoneTimelb = PandaZoneTimelb;
        
        
        UILabel *  PandaZoneContelb = [[UILabel alloc]initWithFrame:CGRectMake(K(15.5), CGRectGetMaxY(PandaZoneuserImgView.frame)+K(14), K(200), K(15))];
        PandaZoneContelb.textColor =  [UIColor colorWithHexString:@"#333333"];
        PandaZoneContelb.font = KSysFont(15);
        PandaZoneContelb.numberOfLines = 0;
        PandaZoneContelb.text = @"非常好，下次还会再来";
        [self.contentView addSubview:PandaZoneContelb];
        _PandaZoneContelb = PandaZoneContelb;
        
        
        
        UIButton *  PandaZoneDeepbtn   = [[UIButton alloc]initWithFrame:CGRectMake(SCREEN_Width-K(36+20), K(0), K(50), K(20))];
        PandaZoneDeepbtn.tag = 0;
        PandaZoneDeepbtn.layer.cornerRadius = K(5);
        PandaZoneDeepbtn.layer.masksToBounds = YES;
        PandaZoneDeepbtn.titleLabel.font = [UIFont systemFontOfSize:12];
        [PandaZoneDeepbtn setBackgroundColor:LGDMianColor];
        [PandaZoneDeepbtn setTitle:@"拉黑" forState:UIControlStateNormal];
        [PandaZoneDeepbtn addTarget:self action:@selector(PandaZoneDeepbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        
        
        
        [self.contentView addSubview:PandaZoneDeepbtn];
        _PandaZoneDeepbtn = PandaZoneDeepbtn;
        
        
        UIButton *  PandaZoneJugbaoBtn   = [[UIButton alloc]initWithFrame:CGRectMake(CGRectGetMinX(PandaZoneDeepbtn.frame)-K(60), K(0), K(50), K(20))];
        PandaZoneJugbaoBtn.tag = 1;
        PandaZoneJugbaoBtn.layer.cornerRadius = K(5);
        PandaZoneJugbaoBtn.layer.masksToBounds = YES;
        PandaZoneJugbaoBtn.titleLabel.font = [UIFont systemFontOfSize:12];
        [PandaZoneJugbaoBtn setBackgroundColor:[UIColor redColor]];
        [PandaZoneJugbaoBtn setTitle:@"举报" forState:UIControlStateNormal];
        [PandaZoneJugbaoBtn addTarget:self action:@selector(PandaZoneDeepbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.contentView addSubview:PandaZoneJugbaoBtn];
        
        UIView * PandaZonebtomline = [[UIView alloc]initWithFrame:CGRectMake(K(15.5), CGRectGetMaxY(PandaZoneContelb.frame)+K(14), SCREEN_Width-K(31), K(0.5))];
        PandaZonebtomline.backgroundColor = LGDLightGaryColor;
        [self.contentView addSubview:PandaZonebtomline];
        _PandaZonebtomline = PandaZonebtomline;
        
        
        
    }
    return self;
}
-(void)PandaZoneDeepbtnClick:(UIButton *)btn{
    [self.delegate  PandaZoneDetaolCellZoneDetiaCellDetailTableViewCellWithIndex:self.tag PandaZoneDetaolCellZoneDetiaCellbtnTag:btn.tag];
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
