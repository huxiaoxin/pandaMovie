//
//  PandaZoneCollectionViewCell.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/17.
//

#import "PandaZoneCollectionViewCell.h"

@interface  PandaZoneCollectionViewCell ()
@property(nonatomic,strong) UIView * PandaZoneView;
@property(nonatomic,strong) UILabel     * PandaTitle;
@property(nonatomic,strong) UILabel     * PandaComentlb;
@property(nonatomic,strong) UILabel     * PandaZanlb;

@end
@implementation PandaZoneCollectionViewCell
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        [self.contentView addSubview:self.PandaZoneView];
        [_PandaZoneView addSubview:self.PandaZoneThubImgView];
        [_PandaZoneView addSubview:self.PandaTitle];
        [_PandaZoneView addSubview:self.PandaComentlb];
        [_PandaZoneView addSubview:self.PandaZanlb];

    }
    return self;
}

- (UIView *)PandaZoneView{
    if (!_PandaZoneView) {
        _PandaZoneView =  [[UIView alloc]initWithFrame:CGRectMake(0, 0, RealWidth(170), 0)];
        _PandaZoneView.backgroundColor = [UIColor colorWithHexString:@"292945"];
        _PandaZoneView.layer.cornerRadius = RealWidth(5);
        _PandaZoneView.layer.masksToBounds = YES;
        _PandaZoneView.userInteractionEnabled = YES;

        
        
    }
    return _PandaZoneView;
}
- (UIImageView *)PandaZoneThubImgView{
    if (!_PandaZoneThubImgView) {
        _PandaZoneThubImgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, RealWidth(170), RealWidth(150))];
        _PandaZoneThubImgView.userInteractionEnabled = YES;
        _PandaZoneThubImgView.contentMode =  UIViewContentModeScaleAspectFill;
        _PandaZoneThubImgView.layer.masksToBounds =  NO;
        
        UITapGestureRecognizer * PandaImgTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(PandaZoneThubImgViewTapClick)];
        
        [_PandaZoneThubImgView addGestureRecognizer:PandaImgTap];
        
    }
    return _PandaZoneThubImgView;
}
-(void)PandaZoneThubImgViewTapClick{
    //图浏览
    [self.delegate PandaZoneCollectionViewCellWithIndex:self.tag btnIndex:0];
}
- (UILabel *)PandaTitle{
    if (!_PandaTitle) {
        _PandaTitle =  [[UILabel alloc]initWithFrame:CGRectMake(RealWidth(5), CGRectGetMaxY(_PandaZoneThubImgView.frame)+RealWidth(5), RealWidth(160), RealWidth(0))];
        _PandaTitle.textColor = [UIColor whiteColor];
        _PandaTitle.font = [UIFont systemFontOfSize:14];
        _PandaTitle.numberOfLines  = 0;
    }
    return _PandaTitle;
}
- (UILabel *)PandaComentlb{
    if (!_PandaComentlb) {
        _PandaComentlb = [[UILabel alloc]initWithFrame:CGRectMake(RealWidth(5), 0, RealWidth(50), RealWidth(20))];
        _PandaComentlb.textColor = [UIColor whiteColor];
        _PandaComentlb.font = [UIFont systemFontOfSize:13];
        _PandaComentlb.userInteractionEnabled = YES;
        NSTextAttachment * aatment = [[NSTextAttachment alloc]init];
        aatment.image = [UIImage imageNamed:@"icon-coment"];
        aatment.bounds  = CGRectMake(0, -3, RealWidth(14), RealWidth(14));
        NSAttributedString * attbute = [NSAttributedString attributedStringWithAttachment:aatment];
        NSMutableAttributedString * amutube = [[NSMutableAttributedString alloc]initWithString:@" 评论"];
        [amutube insertAttributedString:attbute atIndex:0];
        _PandaComentlb.attributedText = amutube;
    
        UITapGestureRecognizer *  PandaComentTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(PandaComentlbClick:)];
        [_PandaComentlb addGestureRecognizer:PandaComentTap];
        
    }
    return _PandaComentlb;
}
- (UILabel *)PandaZanlb{
    if (!_PandaZanlb) {
        _PandaZanlb = [[UILabel alloc]initWithFrame:CGRectMake(RealWidth(8)+CGRectGetMaxX(_PandaComentlb.frame), 0, RealWidth(50), RealWidth(20))];
        _PandaZanlb.textColor = [UIColor whiteColor];
        _PandaZanlb.font = [UIFont systemFontOfSize:13];
        _PandaZanlb.userInteractionEnabled = YES;
        NSTextAttachment * aatment = [[NSTextAttachment alloc]init];
        aatment.image = [UIImage imageNamed:@"icon-coment"];
        aatment.bounds  = CGRectMake(0, -3, RealWidth(14), RealWidth(14));
        NSAttributedString * attbute = [NSAttributedString attributedStringWithAttachment:aatment];
        NSMutableAttributedString * amutube = [[NSMutableAttributedString alloc]initWithString:@" 123"];
        [amutube insertAttributedString:attbute atIndex:0];
        _PandaZanlb.attributedText = amutube;
    
        UITapGestureRecognizer *  PandaComentTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(PandaZanlbClick:)];
        [_PandaZanlb addGestureRecognizer:PandaComentTap];
        
    }
    return _PandaZanlb;
}
- (void)setPandaModel:(PandaZoneModel *)pandaModel{
    _pandaModel = pandaModel;
    [_PandaZoneThubImgView sd_setImageWithURL:[NSURL URLWithString:pandaModel.imgArr.firstObject]];
    _PandaTitle.text = pandaModel.title;
    CGRect TitleRect = [pandaModel.title cxl_sizeWithMoreString:[UIFont systemFontOfSize:14] maxWidth:RealWidth(160)];
    _PandaTitle.size = TitleRect.size;
    _PandaComentlb.y = CGRectGetMaxY(_PandaTitle.frame)+RealWidth(8);
    _PandaZanlb.y = CGRectGetMaxY(_PandaTitle.frame)+RealWidth(8);
    _PandaZoneView.height = CGRectGetMaxY(_PandaZanlb.frame)+RealWidth(10);
    pandaModel.CellHeight = CGRectGetHeight(_PandaZoneView.frame);

}
#pragma mark--PandaComentlbClick
-(void)PandaComentlbClick:(UITapGestureRecognizer *)myTap{
    NSLog(@"sssss");
    //评论
    [self.delegate PandaZoneCollectionViewCellWithIndex:self.tag btnIndex:1];
}

-(void)PandaZanlbClick:(UITapGestureRecognizer *)myTap{
    //点赞
    NSLog(@"%s",__func__);
    [self.delegate PandaZoneCollectionViewCellWithIndex:self.tag btnIndex:2];
}

@end
