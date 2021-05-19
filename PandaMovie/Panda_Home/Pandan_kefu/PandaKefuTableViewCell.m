
#import "PandaKefuTableViewCell.h"
@interface PandaKefuTableViewCell ()
@property(nonatomic,strong) UIImageView * FilmChatSEND_paopaoImgView;
@property(nonatomic,strong) UIImageView * FilmChatSEND_userImgView;
@property(nonatomic,strong) UILabel * FilmChatSEND_Contentlb;
@property(nonatomic,strong) UIImage * FilmChatSEND_uiimageName;


@property(nonatomic,strong) UIImageView * FilmChatReVICE_paopaoIMgView;
@property(nonatomic,strong) UIImageView * FilmChatReVICE_userImgView;
@property(nonatomic,strong) UILabel * FilmChatReVICE_contelb;
@property(nonatomic,strong) UIImage * FilmChatReVICE_uiimaname;


@end
@implementation PandaKefuTableViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor clearColor];
        
        [self.contentView addSubview:self.FilmChatSEND_userImgView];
        [self addSubview:self.FilmChatSEND_paopaoImgView];
        [_FilmChatSEND_paopaoImgView addSubview:self.FilmChatSEND_Contentlb];
        
        [self.contentView addSubview:self.FilmChatReVICE_userImgView];
        [self addSubview:self.FilmChatReVICE_paopaoIMgView];
        [_FilmChatReVICE_paopaoIMgView addSubview:self.FilmChatReVICE_contelb];
    }
    return self;
}
-(UIImageView *)FilmChatReVICE_userImgView{
    if (!_FilmChatReVICE_userImgView) {
        _FilmChatReVICE_userImgView = [[UIImageView alloc]initWithFrame:CGRectMake(RealWidth(15), RealWidth(10), RealWidth(45), RealWidth(45))];
        _FilmChatReVICE_userImgView.layer.cornerRadius = RealWidth(22.5);
        _FilmChatReVICE_userImgView.layer.masksToBounds = YES;
    }
    return _FilmChatReVICE_userImgView;
}
-(UIImageView *)FilmChatSEND_userImgView{
    if (!_FilmChatSEND_userImgView) {
        _FilmChatSEND_userImgView = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_Width-RealWidth(60), RealWidth(10), RealWidth(45), RealWidth(45))];
        _FilmChatSEND_userImgView.layer.cornerRadius = RealWidth(22.5);
        _FilmChatSEND_userImgView.layer.masksToBounds = YES;
    }
    return _FilmChatSEND_userImgView;
}

- (UIImageView *)FilmChatReVICE_paopaoIMgView{
    if (!_FilmChatReVICE_paopaoIMgView) {
        _FilmChatReVICE_paopaoIMgView = [[UIImageView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_FilmChatReVICE_userImgView.frame)+RealWidth(15), CGRectGetMidY(_FilmChatReVICE_userImgView.frame), 0, 0)];
        _FilmChatReVICE_paopaoIMgView.image = self.FilmChatReVICE_uiimaname;
    }
    return _FilmChatReVICE_paopaoIMgView;
}
- (UIImageView *)FilmChatSEND_paopaoImgView{
    if (!_FilmChatSEND_paopaoImgView) {
        _FilmChatSEND_paopaoImgView = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_Width-CGRectGetWidth(_FilmChatSEND_paopaoImgView.frame)-RealWidth(15)-RealWidth(170), CGRectGetMidY(_FilmChatSEND_userImgView.frame), RealWidth(160), RealWidth(30))];
        _FilmChatSEND_paopaoImgView.image = self.FilmChatSEND_uiimageName;
    }
    return _FilmChatSEND_paopaoImgView;
}
-(UILabel *)FilmChatReVICE_contelb{
    if (!_FilmChatReVICE_contelb) {
        _FilmChatReVICE_contelb = [[UILabel alloc]init];
        _FilmChatReVICE_contelb.numberOfLines = 0;
        _FilmChatReVICE_contelb.textColor = [UIColor blackColor];
        _FilmChatReVICE_contelb.font = [UIFont systemFontOfSize:15];
    }
    return _FilmChatReVICE_contelb;
}
-(UILabel *)FilmChatSEND_Contentlb{
    if (!_FilmChatSEND_Contentlb) {
        _FilmChatSEND_Contentlb = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
        _FilmChatSEND_Contentlb.numberOfLines = 0;
        _FilmChatSEND_Contentlb.textColor = [UIColor whiteColor];
        _FilmChatSEND_Contentlb.font = [UIFont systemFontOfSize:15];
    }
    return _FilmChatSEND_Contentlb;
}
- (UIImage *)FilmChatSEND_uiimageName {
    if (_FilmChatSEND_uiimageName == nil) {
        UIImage *image = [UIImage imageNamed:@"chat_blube"];
        CGSize size = image.size;
        _FilmChatSEND_uiimageName = [image stretchableImageWithLeftCapWidth:size.width/2 topCapHeight:size.height*0.8];
    }
    return _FilmChatSEND_uiimageName;
}
- (UIImage *)FilmChatReVICE_uiimaname{
    if (!_FilmChatReVICE_uiimaname) {
        UIImage *image  = [UIImage imageNamed:@"wzm_chat_bj1"];
        CGSize size = image.size;
        _FilmChatReVICE_uiimaname = [image stretchableImageWithLeftCapWidth:size.width/2 topCapHeight:size.height*0.8];
    }
    return _FilmChatReVICE_uiimaname;
}
- (void)setPandaModel:(PandaMsgDetailModel *)pandaModel{
    _pandaModel =  pandaModel;
    [_FilmChatSEND_userImgView sd_setImageWithURL:[NSURL URLWithString:@"https://p.qqan.com/up/2021-4/16194921988015974.jpg"]];
    
    [_FilmChatReVICE_userImgView sd_setImageWithURL:[NSURL URLWithString:pandaModel.imgUrl]];
    
    if (pandaModel.msgisMe) {
        _FilmChatReVICE_paopaoIMgView.hidden = YES;
        _FilmChatReVICE_userImgView.hidden = YES;
        _FilmChatReVICE_contelb.hidden = YES;
        
        _FilmChatSEND_paopaoImgView.hidden = NO;
        _FilmChatSEND_userImgView.hidden = NO;
        _FilmChatSEND_Contentlb.hidden = NO;
        
        [_FilmChatSEND_Contentlb setText:pandaModel.msgname];
        CGRect contetnRect =  [pandaModel.msgname cxl_sizeWithMoreString:[UIFont systemFontOfSize:15] maxWidth:SCREEN_Width-RealWidth(150)];
        
        _FilmChatSEND_Contentlb.frame = CGRectMake(RealWidth(10), RealWidth(10), contetnRect.size.width, contetnRect.size.height);
        
        _FilmChatSEND_paopaoImgView.frame = CGRectMake(SCREEN_Width-contetnRect.size.width-RealWidth(45+15+25), RealWidth(15), contetnRect.size.width+RealWidth(20), contetnRect.size.height+RealWidth(20));
        pandaModel.CellHeight =  CGRectGetMaxY(_FilmChatSEND_paopaoImgView.frame)+RealWidth(30);
        
    }else{
        
        _FilmChatReVICE_paopaoIMgView.hidden = NO;
        _FilmChatReVICE_userImgView.hidden = NO;
        _FilmChatReVICE_contelb.hidden = NO;
        
        _FilmChatSEND_paopaoImgView.hidden = YES;
        _FilmChatSEND_userImgView.hidden = YES;
        _FilmChatSEND_Contentlb.hidden = YES;
        
        
        [_FilmChatReVICE_contelb setText:pandaModel.msgname];
        CGRect contetnRect =  [pandaModel.msgname cxl_sizeWithMoreString:[UIFont systemFontOfSize:15] maxWidth:SCREEN_Width-RealWidth(150)];
        
        _FilmChatReVICE_contelb.frame = CGRectMake(RealWidth(10), RealWidth(10), contetnRect.size.width, contetnRect.size.height);
        
        _FilmChatReVICE_paopaoIMgView.frame = CGRectMake(CGRectGetMaxX(_FilmChatReVICE_userImgView.frame)+RealWidth(10), RealWidth(15), contetnRect.size.width+RealWidth(20), contetnRect.size.height+RealWidth(20));
        pandaModel.CellHeight =  CGRectGetMaxY(_FilmChatReVICE_paopaoIMgView.frame)+RealWidth(30);
        
    }
    
}

-(void)setPdModell:(FilmChatDetailMoel *)pdModell{
    _pdModell =  pdModell;
    [_FilmChatSEND_userImgView sd_setImageWithURL:[NSURL URLWithString:@"https://p.qqan.com/up/2021-4/16194921988015974.jpg"]];
    _FilmChatReVICE_userImgView.image = [UIImage imageNamed:@"kefutouxiangdefuben"];
    if (pdModell.msgisMe) {
        _FilmChatReVICE_paopaoIMgView.hidden = YES;
        _FilmChatReVICE_userImgView.hidden = YES;
        _FilmChatReVICE_contelb.hidden = YES;
        
        _FilmChatSEND_paopaoImgView.hidden = NO;
        _FilmChatSEND_userImgView.hidden = NO;
        _FilmChatSEND_Contentlb.hidden = NO;
        
        [_FilmChatSEND_Contentlb setText:pdModell.msgname];
        CGRect contetnRect =  [pdModell.msgname cxl_sizeWithMoreString:[UIFont systemFontOfSize:15] maxWidth:SCREEN_Width-RealWidth(150)];
        
        _FilmChatSEND_Contentlb.frame = CGRectMake(RealWidth(10), RealWidth(10), contetnRect.size.width, contetnRect.size.height);
        
        _FilmChatSEND_paopaoImgView.frame = CGRectMake(SCREEN_Width-contetnRect.size.width-RealWidth(45+15+25), RealWidth(15), contetnRect.size.width+RealWidth(20), contetnRect.size.height+RealWidth(20));
        pdModell.CellHeight =  CGRectGetMaxY(_FilmChatSEND_paopaoImgView.frame)+RealWidth(30);
        
    }else{
        
        _FilmChatReVICE_paopaoIMgView.hidden = NO;
        _FilmChatReVICE_userImgView.hidden = NO;
        _FilmChatReVICE_contelb.hidden = NO;
        
        _FilmChatSEND_paopaoImgView.hidden = YES;
        _FilmChatSEND_userImgView.hidden = YES;
        _FilmChatSEND_Contentlb.hidden = YES;
        
        
        [_FilmChatReVICE_contelb setText:pdModell.msgname];
        CGRect contetnRect =  [pdModell.msgname cxl_sizeWithMoreString:[UIFont systemFontOfSize:15] maxWidth:SCREEN_Width-RealWidth(150)];
        
        _FilmChatReVICE_contelb.frame = CGRectMake(RealWidth(10), RealWidth(10), contetnRect.size.width, contetnRect.size.height);
        
        _FilmChatReVICE_paopaoIMgView.frame = CGRectMake(CGRectGetMaxX(_FilmChatReVICE_userImgView.frame)+RealWidth(10), RealWidth(15), contetnRect.size.width+RealWidth(20), contetnRect.size.height+RealWidth(20));
        pdModell.CellHeight =  CGRectGetMaxY(_FilmChatReVICE_paopaoIMgView.frame)+RealWidth(30);
        
    }
    
}


@end


