
#import "PandaZoneDetailController.h"
#import "PandaZoneDetailheadeView.h"
#import "LMJHorizontalScrollText.h"
#import "PandaZoneDetaolCell.h"
#import "PandaZoneJubaoController.h"
#import <LYEmptyView-umbrella.h>
#import <XHInputView/XHInputView.h>
#import "PandaComentListModel.h"
@interface PandaZoneDetailController ()<UITableViewDataSource,UITableViewDelegate,PandaZoneDetaolCellDelegate,PandaZoneHeaderDelegate>
@property(nonatomic,strong) UITableView  * PandaZoneTableView;
@property(nonatomic,strong) PandaZoneDetailheadeView * PandaZoneheader;
@property(nonatomic,strong) NSMutableArray * PandaZonedataArr;
@end

@implementation PandaZoneDetailController

- (NSMutableArray *)PandaZonedataArr{
    if (!_PandaZonedataArr) {
        _PandaZonedataArr = [NSMutableArray array];
    }
    return _PandaZonedataArr;
}
-(PandaZoneDetailheadeView *)PandaZoneheader{
    if (!_PandaZoneheader) {
        _PandaZoneheader = [[PandaZoneDetailheadeView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_Width, K(20)) ConfigZoneModel:self.pandaModel];
        _PandaZoneheader.delegate = self;
    }
    return _PandaZoneheader;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    UIView * navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_Width, NaviH)];
//    self.navigationItem.titleView = navView;
    self.gk_navTitleView = navView;
    LMJHorizontalScrollText * ScrollText = [[LMJHorizontalScrollText alloc]initWithFrame:CGRectMake(K(0), K(0), CGRectGetWidth(navView.frame), K(40))];
    ScrollText.textColor = [UIColor whiteColor];
    ScrollText.text = self.pandaModel.title;
    ScrollText.textFont =KSysFont(18);
    ScrollText.speed              = 0.03;
    ScrollText.moveDirection      = LMJTextScrollMoveLeft;
    ScrollText.moveMode           = LMJTextScrollContinuous;
   [navView addSubview:ScrollText];
    [ScrollText move];
    [self.view addSubview:self.PandaZoneTableView];
    self.PandaZoneheader.height = self.PandaZoneheader.PandaZoneHeaderHeight;
    _PandaZoneTableView.tableHeaderView = self.PandaZoneheader;
    // Do any additional setup after loading the view.

    UIButton * PandaSendComentBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, SCREEN_Height-K(50), SCREEN_Width, K(50))];
    [PandaSendComentBtn setBackgroundColor:LGDMianColor];
    [PandaSendComentBtn setTitle:@"发布评论" forState:UIControlStateNormal];
    PandaSendComentBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [PandaSendComentBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    PandaSendComentBtn.titleLabel.font = [UIFont systemFontOfSize:K(14)];
    [PandaSendComentBtn addTarget:self action:@selector(PandaSendComentBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:PandaSendComentBtn];
}

- (UITableView *)PandaZoneTableView{
    if (!_PandaZoneTableView) {
        _PandaZoneTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, NaviH, SCREEN_Width, SCREEN_Height-K(60)-NaviH) style:UITableViewStylePlain];
        _PandaZoneTableView.delegate = self;
        _PandaZoneTableView.dataSource = self;
        _PandaZoneTableView.separatorStyle =  UITableViewCellSelectionStyleNone;
        _PandaZoneTableView.backgroundColor = [UIColor clearColor];
        _PandaZoneTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(PandaSendHeaderClicks)];
        [_PandaZoneTableView.mj_header beginRefreshing];
    }
    return _PandaZoneTableView;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PandaZonedataArr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *  PandaSendHeadIdentifer = @"PandaZoneDetaolCell";
    PandaZoneDetaolCell   * PandaSendHCell  =[tableView dequeueReusableCellWithIdentifier:PandaSendHeadIdentifer];
    if (PandaSendHCell == nil) {
        PandaSendHCell = [[PandaZoneDetaolCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:PandaSendHeadIdentifer];
    }
    PandaSendHCell.tag = indexPath.row;
    PandaSendHCell.delegate = self;
    PandaSendHCell.comentModel = self.PandaZonedataArr[indexPath.row];
    return PandaSendHCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    PandaComentListModel  * comentMdoe = self.PandaZonedataArr[indexPath.row];
    return comentMdoe.CellHeight;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return K(40);
}
#pragma mark--
-(void)PandaZoneDetaolCellZoneDetiaCellDetailTableViewCellWithIndex:(NSInteger)Cellindex PandaZoneDetaolCellZoneDetiaCellbtnTag:(NSInteger)btnIndex{
    PandaComentListModel * comentModel = self.PandaZonedataArr[Cellindex];
    if (btnIndex == 1) {
        PandaZoneJubaoController * jubaoVc = [[PandaZoneJubaoController alloc]init];
        [self.navigationController pushViewController:jubaoVc animated:YES];
    }else{
       

//        if ([FilmFactoryAccountComponent checkLogin:YES]){
     
            UIAlertController * PandaSendeAlteVc = [UIAlertController alertControllerWithTitle:@"温馨提示" message:[NSString stringWithFormat:@"您确定要屏蔽(%@)该用户吗？",comentModel.name] preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction * sureActoin = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                [self PandaSendZoenCofigure:comentModel];
            }];
            
            UIAlertAction * thinkingActoin = [UIAlertAction actionWithTitle:@"再想想" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                
            }];
            [PandaSendeAlteVc addAction:sureActoin];
            [PandaSendeAlteVc addAction:thinkingActoin];
            [self presentViewController:PandaSendeAlteVc animated:YES completion:nil];

//        }

    }
}
-(void)PandaSendZoenCofigure:(PandaComentListModel *)comentModel{
    [WHC_ModelSqlite delete:[PandaComentListModel class] where:[NSString stringWithFormat:@"ZoneID = '%ld' and ComentID = '%ld'",(long)comentModel.ZoneID,comentModel.ComentID]];
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD showSuccess:@"屏蔽成功"];
        [self.PandaZoneTableView.mj_header beginRefreshing];
    });

}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView * SectionView = [UIView new];
    SectionView.backgroundColor = [UIColor clearColor];
    UILabel * PandaSendZoenAllComentlb = [[UILabel alloc]initWithFrame:CGRectMake(K(20), K(10), K(200), K(20))];
    PandaSendZoenAllComentlb.font = KBlFont(14);
    PandaSendZoenAllComentlb.text = @"全部评论";
    PandaSendZoenAllComentlb.textColor = [UIColor whiteColor];
    [SectionView addSubview:PandaSendZoenAllComentlb];
    return SectionView;
}
-(void)PandaSendHeaderClicks{
    MJWeakSelf;
    NSArray * dataArr = [WHC_ModelSqlite query:[PandaComentListModel class] where:[NSString stringWithFormat:@"ZoneID = '%ld'",(long)self.pandaModel.PandaZoneID]];
    NSLog(@"-------%ld",dataArr.count);
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.6 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (weakSelf.PandaZonedataArr.count > 0) {
            [weakSelf.PandaZonedataArr removeAllObjects];
        }
        weakSelf.PandaZonedataArr = [dataArr mutableCopy];
        if (weakSelf.PandaZonedataArr.count == 0) {
            [LCProgressHUD showInfoMsg:@"暂无数据"];
            LYEmptyView * emtyView = [LYEmptyView emptyViewWithImage:nil titleStr:@"暂无数据" detailStr:nil];
            emtyView.contentViewOffset = K(150);
            weakSelf.PandaZoneTableView.ly_emptyView = emtyView;
        }
        [weakSelf.PandaZoneTableView reloadData];
        [weakSelf.PandaZoneTableView.mj_header endRefreshing];
    });
}
#pragma mark--FilmFacorryZoneDetailheaderDelegate
-(void)FilmFacorryZoneDetailheaderWithBtnIndex:(NSInteger)btnIndex{

    if (btnIndex == 0) {
//        if ([FilmFactoryAccountComponent checkLogin:YES]){
            //拉黑
              UIAlertController * PandaSendeAlteVc = [UIAlertController alertControllerWithTitle:@"温馨提示" message:[NSString stringWithFormat:@"您确定要屏蔽(%@)该用户吗？",self.pandaModel.username] preferredStyle:UIAlertControllerStyleAlert];
              UIAlertAction * sureActoin = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                  [self PandaChangeConfiguserModel:self.pandaModel];
              }];
              
              UIAlertAction * thinkingActoin = [UIAlertAction actionWithTitle:@"再想想" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                  
              }];
              [PandaSendeAlteVc addAction:sureActoin];
              [PandaSendeAlteVc addAction:thinkingActoin];
              [self presentViewController:PandaSendeAlteVc animated:YES completion:nil];

        
//        }
    }else{
        PandaZoneJubaoController * jubaoVc = [[PandaZoneJubaoController alloc]init];
        [self.navigationController pushViewController:jubaoVc animated:YES];
    }
}
-(void)PandaChangeConfiguserModel:(PandaZoneModel *)zoneModel{
    
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD  showSuccess:@"屏蔽成功"];
        [WHC_ModelSqlite delete:[PandaZoneModel class] where:[NSString stringWithFormat:@"PandaZoneID ='%ld'",(long)self.pandaModel.PandaZoneID]];
        [self.navigationController popViewControllerAnimated:YES];
    });
}
-(void)PandaSendComentBtnClick{
    

//    if ([FilmFactoryAccountComponent checkLogin:YES]){
        MJWeakSelf;
        [XHInputView showWithStyle:InputViewStyleLarge configurationBlock:^(XHInputView *inputView) {
            inputView.sendButtonBackgroundColor =  LGDMianColor;
            inputView.sendButtonTitle = @"发送";
        } sendBlock:^BOOL(NSString *text) {
            if (text.length == 0) {
                [LCProgressHUD showInfoMsg:@"请输入评论"];
                return NO;
            }else{
                [weakSelf PandaSendComentTextWitgConfiygre:text];
                return YES;
            }
        }];

//    }
    
    
    

}
-(NSString*)getCurrentTimes{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    NSDate *datenow = [NSDate date];
    NSString *currentTimeString = [formatter stringFromDate:datenow];
    return currentTimeString;
}
-(void)PandaSendComentTextWitgConfiygre:(NSString *)Text{
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD showSuccess:@"评论成功"];
        PandaComentListModel * PandaSenditem  =[[PandaComentListModel alloc]init];
        PandaSenditem.imgurl = @"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201509%2F20%2F20150920105348_38Ewf.jpeg&refer=http%3A%2F%2Fb-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1622122578&t=b958e581d60c7e075d8725af3bbd6127";
        PandaSenditem.name = @"Account_1251";
        PandaSenditem.time = [self getCurrentTimes];
        PandaSenditem.content  = Text;
        PandaSenditem.ZoneID = self.pandaModel.PandaZoneID;
        PandaSenditem.ComentID = (self.PandaZonedataArr.count+1);
        PandaSenditem.CellHeight = 0;
        [WHC_ModelSqlite  insert:PandaSenditem];
        [self.PandaZonedataArr addObject:PandaSenditem];
        [self.PandaZoneTableView reloadData];
    });
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
