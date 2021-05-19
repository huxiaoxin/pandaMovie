

#import "PandaCatagaryDetailFooterView.h"
#import "PandaCatahroyBtn.h"
#import "PandaMyTreetn.h"
@interface PandaCatagaryDetailFooterView ()

@end
@implementation PandaCatagaryDetailFooterView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        UIView * pandaDetailBtomView = [[UIView alloc]initWithFrame:CGRectMake(RealWidth(10), RealWidth(10), SCREEN_Width-RealWidth(20), K(109+29+10))];
        pandaDetailBtomView.backgroundColor = [UIColor colorWithHexString:@"292945"];
        [self addSubview:pandaDetailBtomView];
        

        UIView * pandaDetailBtomline = [[UIView alloc]initWithFrame:CGRectMake(K(16), K(6.5), SCREEN_Width-K(32), K(1))];
        pandaDetailBtomline.backgroundColor =  LGDLightGaryColor;
//        [pandaDetailBtomView addSubview:pandaDetailBtomline];
        
        PandaCatahroyBtn * pandaDetailbtn = [[PandaCatahroyBtn alloc]initWithFrame:CGRectMake(K(17), CGRectGetMaxY(pandaDetailBtomline.frame)+K(11.5), K(87+15), K(35))];
        pandaDetailbtn.PandaCatagryTopImgView.image = [UIImage imageNamed:@"diban"];
        pandaDetailbtn.PandaBtomlb.text = @"地板型胶地板";
        [pandaDetailBtomView addSubview:pandaDetailbtn];
        
        
        PandaCatahroyBtn * pandaDetailbtn2 = [[PandaCatahroyBtn alloc]initWithFrame:CGRectMake(K(30)+CGRectGetMaxX(pandaDetailbtn.frame), CGRectGetMaxY(pandaDetailBtomline.frame)+K(11.5), K(87), K(35))];
        pandaDetailbtn2.PandaCatagryTopImgView.image = [UIImage imageNamed:@"dengguang"];
        pandaDetailbtn2.PandaBtomlb.text = @"灯光吊灯";
        [pandaDetailBtomView addSubview:pandaDetailbtn2];

        PandaCatahroyBtn * pandaDetailbtn3 = [[PandaCatahroyBtn alloc]initWithFrame:CGRectMake(K(16)+CGRectGetMaxX(pandaDetailbtn2.frame), CGRectGetMaxY(pandaDetailBtomline.frame)+K(11.5), K(87+15), K(35))];
        pandaDetailbtn3.PandaCatagryTopImgView.image = [UIImage imageNamed:@"kongtiaoA"];
        pandaDetailbtn3.PandaBtomlb.text = @"休息区空调";
        [pandaDetailBtomView addSubview:pandaDetailbtn3];

        UIView * pandaDetailBtomline1 = [[UIView alloc]initWithFrame:CGRectMake(K(16), CGRectGetMaxY(pandaDetailbtn3.frame)+K(8), SCREEN_Width-K(32), K(1))];
        pandaDetailBtomline1.backgroundColor =  LGDLightGaryColor;
//        [pandaDetailBtomView addSubview:pandaDetailBtomline1];

        NSArray * ImgArr =  @[@"免费无线",@"停车场",@"附近餐厅",@"便利店"];
    
        for (int pandaindex = 0; pandaindex < ImgArr.count; pandaindex++) {
            PandaMyTreetn *pandainbtn = [[PandaMyTreetn alloc]initWithFrame:CGRectMake(SCREEN_Width/ImgArr.count*pandaindex, CGRectGetMaxY(pandaDetailBtomline1.frame)+K(10), SCREEN_Width/ImgArr.count, K(50))];
            pandainbtn.PandaBtomlb.text =  ImgArr[pandaindex];
            pandainbtn.PandaTopImgView.image = [UIImage imageNamed:ImgArr[pandaindex]];
            
            [pandaDetailBtomView addSubview:pandainbtn];
        }
        
        
    }
    return self;
}
@end
