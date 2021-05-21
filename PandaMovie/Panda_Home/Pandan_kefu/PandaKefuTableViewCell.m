
#import "PandaKefuTableViewCell.h"
@interface PandaKefuTableViewCell ()
@property(nonatomic,strong) UIImageView * pandaMovieChatSEND_paopaoImgView;
@property(nonatomic,strong) UIImageView * pandaMoviewChatSEND_userImgView;
@property(nonatomic,strong) UILabel * pandaMoiewChatSEND_Contentlb;
@property(nonatomic,strong) UIImage * PanaaMoviewChatSEND_uiimageName;


@property(nonatomic,strong) UIImageView * PandaMoviewChatReVICE_paopaoIMgView;
@property(nonatomic,strong) UIImageView * PandaMoviewChatReVICE_userImgView;
@property(nonatomic,strong) UILabel * PandaMoviewChatReVICE_contelb;
@property(nonatomic,strong) UIImage * PadnaMoviewChatReVICE_uiimaname;


@end
@implementation PandaKefuTableViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor clearColor];
        
        [self.contentView addSubview:self.pandaMoviewChatSEND_userImgView];
        [self addSubview:self.pandaMovieChatSEND_paopaoImgView];
        [_pandaMovieChatSEND_paopaoImgView addSubview:self.pandaMoiewChatSEND_Contentlb];
        
        [self.contentView addSubview:self.PandaMoviewChatReVICE_userImgView];
        [self addSubview:self.PandaMoviewChatReVICE_paopaoIMgView];
        [_PandaMoviewChatReVICE_paopaoIMgView addSubview:self.PandaMoviewChatReVICE_contelb];
    }
    return self;
}
-(UIImageView *)PandaMoviewChatReVICE_userImgView{
    if (!_PandaMoviewChatReVICE_userImgView) {
        _PandaMoviewChatReVICE_userImgView = [[UIImageView alloc]initWithFrame:CGRectMake(RealWidth(15), RealWidth(10), RealWidth(45), RealWidth(45))];
        _PandaMoviewChatReVICE_userImgView.layer.cornerRadius = RealWidth(22.5);
        _PandaMoviewChatReVICE_userImgView.layer.masksToBounds = YES;
    }
    return _PandaMoviewChatReVICE_userImgView;
}
-(UIImageView *)pandaMoviewChatSEND_userImgView{
    if (!_pandaMoviewChatSEND_userImgView) {
        _pandaMoviewChatSEND_userImgView = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_Width-RealWidth(60), RealWidth(10), RealWidth(45), RealWidth(45))];
        _pandaMoviewChatSEND_userImgView.layer.cornerRadius = RealWidth(22.5);
        _pandaMoviewChatSEND_userImgView.layer.masksToBounds = YES;
    }
    return _pandaMoviewChatSEND_userImgView;
}

- (UIImageView *)PandaMoviewChatReVICE_paopaoIMgView{
    if (!_PandaMoviewChatReVICE_paopaoIMgView) {
        _PandaMoviewChatReVICE_paopaoIMgView = [[UIImageView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_PandaMoviewChatReVICE_userImgView.frame)+RealWidth(15), CGRectGetMidY(_PandaMoviewChatReVICE_userImgView.frame), 0, 0)];
        _PandaMoviewChatReVICE_paopaoIMgView.image = self.PadnaMoviewChatReVICE_uiimaname;
    }
    return _PandaMoviewChatReVICE_paopaoIMgView;
}
- (UIImageView *)pandaMovieChatSEND_paopaoImgView{
    if (!_pandaMovieChatSEND_paopaoImgView) {
        _pandaMovieChatSEND_paopaoImgView = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_Width-CGRectGetWidth(_pandaMovieChatSEND_paopaoImgView.frame)-RealWidth(15)-RealWidth(170), CGRectGetMidY(_pandaMoviewChatSEND_userImgView.frame), RealWidth(160), RealWidth(30))];
        _pandaMovieChatSEND_paopaoImgView.image = self.PanaaMoviewChatSEND_uiimageName;
    }
    return _pandaMovieChatSEND_paopaoImgView;
}
-(UILabel *)PandaMoviewChatReVICE_contelb{
    if (!_PandaMoviewChatReVICE_contelb) {
        _PandaMoviewChatReVICE_contelb = [[UILabel alloc]init];
        _PandaMoviewChatReVICE_contelb.numberOfLines = 0;
        _PandaMoviewChatReVICE_contelb.textColor = [UIColor blackColor];
        _PandaMoviewChatReVICE_contelb.font = [UIFont systemFontOfSize:15];
    }
    return _PandaMoviewChatReVICE_contelb;
}
-(UILabel *)pandaMoiewChatSEND_Contentlb{
    if (!_pandaMoiewChatSEND_Contentlb) {
        _pandaMoiewChatSEND_Contentlb = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
        _pandaMoiewChatSEND_Contentlb.numberOfLines = 0;
        _pandaMoiewChatSEND_Contentlb.textColor = [UIColor whiteColor];
        _pandaMoiewChatSEND_Contentlb.font = [UIFont systemFontOfSize:15];
    }
    return _pandaMoiewChatSEND_Contentlb;
}
- (UIImage *)PanaaMoviewChatSEND_uiimageName {
    if (_PanaaMoviewChatSEND_uiimageName == nil) {
        UIImage *image = [UIImage imageNamed:@"chat_blube"];
        CGSize size = image.size;
        _PanaaMoviewChatSEND_uiimageName = [image stretchableImageWithLeftCapWidth:size.width/2 topCapHeight:size.height*0.8];
    }
    return _PanaaMoviewChatSEND_uiimageName;
}
- (UIImage *)PadnaMoviewChatReVICE_uiimaname{
    if (!_PadnaMoviewChatReVICE_uiimaname) {
        UIImage *image  = [UIImage imageNamed:@"wzm_chat_bj1"];
        CGSize size = image.size;
        _PadnaMoviewChatReVICE_uiimaname = [image stretchableImageWithLeftCapWidth:size.width/2 topCapHeight:size.height*0.8];
    }
    return _PadnaMoviewChatReVICE_uiimaname;
}
- (void)setPandaModel:(PandaMsgDetailModel *)pandaModel{
    _pandaModel =  pandaModel;
    [_pandaMoviewChatSEND_userImgView sd_setImageWithURL:[NSURL URLWithString:@"https://p.qqan.com/up/2021-4/16194921988015974.jpg"]];
    
    [_PandaMoviewChatReVICE_userImgView sd_setImageWithURL:[NSURL URLWithString:pandaModel.imgUrl]];
    
    if (pandaModel.msgisMe) {
        _PandaMoviewChatReVICE_paopaoIMgView.hidden = YES;
        _PandaMoviewChatReVICE_userImgView.hidden = YES;
        _PandaMoviewChatReVICE_contelb.hidden = YES;
        
        _pandaMovieChatSEND_paopaoImgView.hidden = NO;
        _pandaMoviewChatSEND_userImgView.hidden = NO;
        _pandaMoiewChatSEND_Contentlb.hidden = NO;
        
        [_pandaMoiewChatSEND_Contentlb setText:pandaModel.msgname];
        CGRect contetnRect =  [pandaModel.msgname cxl_sizeWithMoreString:[UIFont systemFontOfSize:15] maxWidth:SCREEN_Width-RealWidth(150)];
        
        _pandaMoiewChatSEND_Contentlb.frame = CGRectMake(RealWidth(10), RealWidth(10), contetnRect.size.width, contetnRect.size.height);
        
        _pandaMovieChatSEND_paopaoImgView.frame = CGRectMake(SCREEN_Width-contetnRect.size.width-RealWidth(45+15+25), RealWidth(15), contetnRect.size.width+RealWidth(20), contetnRect.size.height+RealWidth(20));
        pandaModel.CellHeight =  CGRectGetMaxY(_pandaMovieChatSEND_paopaoImgView.frame)+RealWidth(30);
        
    }else{
        
        _PandaMoviewChatReVICE_paopaoIMgView.hidden = NO;
        _PandaMoviewChatReVICE_userImgView.hidden = NO;
        _PandaMoviewChatReVICE_contelb.hidden = NO;
        
        _pandaMovieChatSEND_paopaoImgView.hidden = YES;
        _pandaMoviewChatSEND_userImgView.hidden = YES;
        _pandaMoiewChatSEND_Contentlb.hidden = YES;
        
        
        [_PandaMoviewChatReVICE_contelb setText:pandaModel.msgname];
        CGRect contetnRect =  [pandaModel.msgname cxl_sizeWithMoreString:[UIFont systemFontOfSize:15] maxWidth:SCREEN_Width-RealWidth(150)];
        
        _PandaMoviewChatReVICE_contelb.frame = CGRectMake(RealWidth(10), RealWidth(10), contetnRect.size.width, contetnRect.size.height);
        
        _PandaMoviewChatReVICE_paopaoIMgView.frame = CGRectMake(CGRectGetMaxX(_PandaMoviewChatReVICE_userImgView.frame)+RealWidth(10), RealWidth(15), contetnRect.size.width+RealWidth(20), contetnRect.size.height+RealWidth(20));
        pandaModel.CellHeight =  CGRectGetMaxY(_PandaMoviewChatReVICE_paopaoIMgView.frame)+RealWidth(30);
        
    }
    
}

-(void)setPdModell:(PandaMoviewKefuModel *)pdModell{
    _pdModell =  pdModell;
    [_pandaMoviewChatSEND_userImgView sd_setImageWithURL:[NSURL URLWithString:@"https://p.qqan.com/up/2021-4/16194921988015974.jpg"]];
    _PandaMoviewChatReVICE_userImgView.image = [UIImage imageNamed:@"kefutouxiangdefuben"];
    if (pdModell.msgisMe) {
        _PandaMoviewChatReVICE_paopaoIMgView.hidden = YES;
        _PandaMoviewChatReVICE_userImgView.hidden = YES;
        _PandaMoviewChatReVICE_contelb.hidden = YES;
        
        _pandaMovieChatSEND_paopaoImgView.hidden = NO;
        _pandaMoviewChatSEND_userImgView.hidden = NO;
        _pandaMoiewChatSEND_Contentlb.hidden = NO;
        
        [_pandaMoiewChatSEND_Contentlb setText:pdModell.msgname];
        CGRect contetnRect =  [pdModell.msgname cxl_sizeWithMoreString:[UIFont systemFontOfSize:15] maxWidth:SCREEN_Width-RealWidth(150)];
        
        _pandaMoiewChatSEND_Contentlb.frame = CGRectMake(RealWidth(10), RealWidth(10), contetnRect.size.width, contetnRect.size.height);
        
        _pandaMovieChatSEND_paopaoImgView.frame = CGRectMake(SCREEN_Width-contetnRect.size.width-RealWidth(45+15+25), RealWidth(15), contetnRect.size.width+RealWidth(20), contetnRect.size.height+RealWidth(20));
        pdModell.CellHeight =  CGRectGetMaxY(_pandaMovieChatSEND_paopaoImgView.frame)+RealWidth(30);
        
    }else{
        
        _PandaMoviewChatReVICE_paopaoIMgView.hidden = NO;
        _PandaMoviewChatReVICE_userImgView.hidden = NO;
        _PandaMoviewChatReVICE_contelb.hidden = NO;
        
        _pandaMovieChatSEND_paopaoImgView.hidden = YES;
        _pandaMoviewChatSEND_userImgView.hidden = YES;
        _pandaMoiewChatSEND_Contentlb.hidden = YES;
        
        
        [_PandaMoviewChatReVICE_contelb setText:pdModell.msgname];
        CGRect contetnRect =  [pdModell.msgname cxl_sizeWithMoreString:[UIFont systemFontOfSize:15] maxWidth:SCREEN_Width-RealWidth(150)];
        
        _PandaMoviewChatReVICE_contelb.frame = CGRectMake(RealWidth(10), RealWidth(10), contetnRect.size.width, contetnRect.size.height);
        
        _PandaMoviewChatReVICE_paopaoIMgView.frame = CGRectMake(CGRectGetMaxX(_PandaMoviewChatReVICE_userImgView.frame)+RealWidth(10), RealWidth(15), contetnRect.size.width+RealWidth(20), contetnRect.size.height+RealWidth(20));
        pdModell.CellHeight =  CGRectGetMaxY(_PandaMoviewChatReVICE_paopaoIMgView.frame)+RealWidth(30);
        
    }
    
}


@end


