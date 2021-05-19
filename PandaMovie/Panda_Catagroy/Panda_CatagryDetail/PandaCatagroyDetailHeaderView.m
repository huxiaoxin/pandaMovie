

#import "PandaCatagroyDetailHeaderView.h"
#import <SDCycleScrollView.h>
@interface PandaCatagroyDetailHeaderView ()
@property(nonatomic,strong) SDCycleScrollView * pandaThubImgView;

@property(nonatomic,strong) UIView     * pandaContentView;
@property(nonatomic,strong) UILabel    * pandaStatuslb;
@property(nonatomic,strong) UIButton   * pandaColltecdBtn;
@property(nonatomic,strong) UILabel    * pandaFirstlb;
@property(nonatomic,strong) UILabel    * pandaCenterlb;
@property(nonatomic,strong) UIView     *  pandaDeepline;
@end
@implementation PandaCatagroyDetailHeaderView
-(instancetype)initWithFrame:(CGRect)frame ConfigWithModel:(PadaCatagoryweizhiModel *)pandaModel{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        [self addSubview:self.pandaThubImgView];
        
        [self addSubview:self.pandaContentView];
        [_pandaContentView addSubview:self.pandaStatuslb];
        [_pandaContentView addSubview:self.pandaColltecdBtn];
        [_pandaContentView addSubview:self.pandaFirstlb];
        [_pandaContentView addSubview:self.pandaCenterlb];
//        [self addSubview:self.pandaDeepline];
        
        _pandaThubImgView.imageURLStringsGroup =  pandaModel.imgArrs;
        _pandaStatuslb.text = pandaModel.isStart ?   @"活动已结束": @"活动进行中";
        _pandaColltecdBtn.selected = pandaModel.isCollted;
        _pandaFirstlb.text =  pandaModel.title;
        CGRect ToptitleRect  =[pandaModel.title cxl_sizeWithMoreString:[UIFont systemFontOfSize:15] maxWidth:SCREEN_Width-K(30+20)];
        _pandaFirstlb.mj_size = ToptitleRect.size;
        
        
        CGRect CenteritleRect  =[pandaModel.DetailDesc cxl_sizeWithMoreString:[UIFont systemFontOfSize:15] maxWidth:SCREEN_Width-K(30+20)];
        _pandaCenterlb.text = pandaModel.DetailDesc;
        _pandaCenterlb.mj_size = CenteritleRect.size;
        
        _pandaContentView.height = CGRectGetMaxY(_pandaCenterlb.frame)+RealWidth(10);
        
        self.PandaDetailHeaderHeight = CGRectGetMaxY(_pandaCenterlb.frame)+RealWidth(10)+ RealWidth(180+20);
        
        if ([PandaMovieLoginAccoutModel PandaMoviewuserIsLogin]) {
            _pandaColltecdBtn.selected = pandaModel.isCollted;
        }else{
            _pandaColltecdBtn.selected = NO;
        }
        
    }
    return self;
}
- (UIView *)pandaContentView{
    if (!_pandaContentView) {
        _pandaContentView = [[UIView alloc]initWithFrame:CGRectMake(RealWidth(10), CGRectGetMaxY(_pandaThubImgView.frame)+RealWidth(10), GK_SCREEN_WIDTH-RealWidth(20), RealWidth(40))];
        _pandaContentView.backgroundColor = [UIColor colorWithHexString:@"292945"];
        _pandaContentView.layer.cornerRadius = RealWidth(5);
        _pandaContentView.layer.masksToBounds = YES;
    }
    return _pandaContentView;
}
-(void)pandaColltecdBtnClick:(UIButton *)myBtn{
    [self.delegate PandaCatagroyDetailHeaderViewBtnClick:myBtn];
}
- (SDCycleScrollView *)pandaThubImgView{
    if (!_pandaThubImgView) {
        _pandaThubImgView = [[SDCycleScrollView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_Width, K(150+30))];
        _pandaThubImgView.backgroundColor =  LGDLightGaryColor;
    }
    return _pandaThubImgView;
}
- (UILabel *)pandaStatuslb{
    if (!_pandaStatuslb) {
        _pandaStatuslb = [[UILabel alloc]initWithFrame:CGRectMake(K(15), K(15), K(200), K(15))];
        _pandaStatuslb.text = @"活动进行中";
        _pandaStatuslb.textColor = [UIColor redColor];
        _pandaStatuslb.font =[UIFont systemFontOfSize:14];
    }
    return _pandaStatuslb;
}
- (UIButton *)pandaColltecdBtn{
    if (!_pandaColltecdBtn) {
        _pandaColltecdBtn = [[UIButton alloc]initWithFrame:CGRectMake(SCREEN_Width-K(40+20), K(15), K(20), K(20))];
        [_pandaColltecdBtn setBackgroundImage:[UIImage imageNamed:@"shoucang_nomal"] forState:UIControlStateNormal];
        [_pandaColltecdBtn setBackgroundImage:[UIImage imageNamed:@"shoucang_sel"] forState:UIControlStateSelected];
        [_pandaColltecdBtn addTarget:self action:@selector(pandaColltecdBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _pandaColltecdBtn;
}
- (UILabel *)pandaFirstlb{
    if (!_pandaFirstlb) {
        
        CGRect pandaBtnRect = [@"" cxl_sizeWithMoreString:[UIFont systemFontOfSize:15] maxWidth:SCREEN_Width-K(30)];
        _pandaFirstlb = [[UILabel alloc]initWithFrame:CGRectMake(K(15), CGRectGetMaxY(_pandaColltecdBtn.frame)+K(15), pandaBtnRect.size.width, pandaBtnRect.size.height)];
        _pandaFirstlb.font = [UIFont systemFontOfSize:15];
        _pandaFirstlb.numberOfLines = 0;
        _pandaFirstlb.textColor = [UIColor whiteColor];
        _pandaFirstlb.text = @"";
    }
    return _pandaFirstlb;
}
- (UILabel *)pandaCenterlb{
    if (!_pandaCenterlb) {
        CGRect pandaBtnRect = [@"" cxl_sizeWithMoreString:[UIFont systemFontOfSize:15] maxWidth:SCREEN_Width-K(30)];
        
        _pandaCenterlb = [[UILabel alloc]initWithFrame:CGRectMake(K(15), CGRectGetMaxY(_pandaFirstlb.frame)+K(10), pandaBtnRect.size.width, pandaBtnRect.size.height)];
        _pandaCenterlb.numberOfLines = 0;
        _pandaCenterlb.textColor =LGDGaryColor;
        _pandaCenterlb.font = [UIFont systemFontOfSize:15];
        _pandaCenterlb.text = @"";
    }
    return _pandaCenterlb;
}
- (UIView *)pandaDeepline{
    if (!_pandaDeepline) {
        _pandaDeepline = [[UIView alloc]initWithFrame:CGRectMake(K(15), CGRectGetMaxY(_pandaCenterlb.frame)+K(15), SCREEN_Width-K(30), 1)];
        _pandaDeepline.backgroundColor = LGDLightGaryColor;
    }
    return _pandaDeepline;
}
@end
