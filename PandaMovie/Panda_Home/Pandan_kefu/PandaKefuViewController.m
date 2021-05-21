//
//  PandaKefuViewController.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/5.
//

#import "PandaKefuViewController.h"
#import "PandaKefuTableViewCell.h"
#import "PandaMoviewKefuModel.h"
#import "FilmChatZoneChatDetailToolsView.h"
@interface PandaKefuViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong) UITableView    * PandaKefuTableView;
@property(nonatomic,strong) NSMutableArray * PandaKefudataArr;
@property(nonatomic,strong) FilmChatZoneChatDetailToolsView *  PandaToolView;
@property(nonatomic,assign) BOOL isFirstSend;
@property(nonatomic,assign) BOOL isKefu;
@end

@implementation PandaKefuViewController
- (NSMutableArray *)PandaKefudataArr{
    if (!_PandaKefudataArr) {
    _PandaKefudataArr = [NSMutableArray array];
        PandaMoviewKefuModel * chatModel =  [[PandaMoviewKefuModel alloc]init];
        chatModel.msgname = @"您好～我是今天值班的客服，小周，请问有什么可以帮您？";
        chatModel.userID = 9999;
        chatModel.imgUrl = @"";
        chatModel.msgisMe = NO;
        chatModel.CellHeight = 0;
        [_PandaKefudataArr addObject:chatModel];
    }
    return _PandaKefudataArr;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"在线客服";
    self.isFirstSend = NO;
    self.isKefu = NO;
    [self.view addSubview:self.PandaKefuTableView];
    [self.view addSubview:self.PandaToolView];
    
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.34 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD hide];
        self.isKefu = YES;
        [self.PandaKefuTableView reloadData];
    });
}
- (FilmChatZoneChatDetailToolsView *)PandaToolView{
    if (!_PandaToolView) {
        MJWeakSelf;
        _PandaToolView = [[FilmChatZoneChatDetailToolsView alloc]initWithFrame:CGRectMake(0, GK_SCREEN_HEIGHT-RealWidth(65), GK_SCREEN_WIDTH, RealWidth(60)) witheTextViewBlokc:^(UITextView * _Nonnull textView) {
            [LCProgressHUD showLoading:@""];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [LCProgressHUD hide];
                PandaMoviewKefuModel  * models = [[PandaMoviewKefuModel alloc]init];
                models.msgname = textView.text;
                models.userID = 9999;
                models.msgisMe = YES;
                models.imgUrl = @"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg3.duitang.com%2Fuploads%2Fitem%2F201505%2F17%2F20150517101126_SFy2U.jpeg&refer=http%3A%2F%2Fimg3.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1619531738&t=5a22670d588cfd9b0d5f6719b04e22bf";
                models.CellHeight = 0 ;
                [weakSelf.PandaKefudataArr addObject:models];
                textView.text = nil;
                [weakSelf.PandaKefuTableView reloadData];
                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                    PandaMoviewKefuModel  * models = [[PandaMoviewKefuModel alloc]init];
                    models.msgname = self.isFirstSend == NO ? @"抱歉，小周无法理解你说的问题哦～，你可以说今天是周几😄" : @"很抱歉，无法理解你说的问题，如果有疑问，可以拨打我们的人工客服电话400-600-5872";
                    models.userID = 9999;
                    models.msgisMe = NO;
                    models.imgUrl = @"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg3.duitang.com%2Fuploads%2Fitem%2F201505%2F17%2F20150517101126_SFy2U.jpeg&refer=http%3A%2F%2Fimg3.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1619531738&t=5a22670d588cfd9b0d5f6719b04e22bf";
                    models.CellHeight = 0 ;
                    [weakSelf.PandaKefudataArr addObject:models];
                    [weakSelf.PandaKefuTableView reloadData];
                    self.isFirstSend = YES;
                });
            });
        }];
    }
    return _PandaToolView;
}
- (UITableView *)PandaKefuTableView{
    if (!_PandaKefuTableView) {
        _PandaKefuTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, GK_STATUSBAR_NAVBAR_HEIGHT, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_STATUSBAR_NAVBAR_HEIGHT-RealWidth(65)) style:UITableViewStylePlain];
        _PandaKefuTableView.delegate = self;
        _PandaKefuTableView.dataSource = self;
        _PandaKefuTableView.showsVerticalScrollIndicator = NO;
        _PandaKefuTableView.showsHorizontalScrollIndicator = NO;
        _PandaKefuTableView.separatorStyle = UITableViewCellSelectionStyleNone;
        _PandaKefuTableView.backgroundColor = [UIColor clearColor];
    }
    return _PandaKefuTableView;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.isKefu ? self.PandaKefudataArr.count : 0;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * pandaIdentifer = @"PandaKefuTableViewCell";
    PandaKefuTableViewCell * pandaCell = [tableView dequeueReusableCellWithIdentifier:pandaIdentifer];
    if (pandaCell == nil) {
        pandaCell = [[PandaKefuTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:pandaIdentifer];
    }
    pandaCell.pdModell  = self.PandaKefudataArr[indexPath.row];
    return pandaCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    PandaMoviewKefuModel * chatModel = self.PandaKefudataArr[indexPath.row];
    return chatModel.CellHeight;
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
