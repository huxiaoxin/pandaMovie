
#import "PandaSugedtionViewController.h"
#import "PandaSugestionTableCell.h"
#import "PandaSugestionModels.h"
#import <UITextView+ZWPlaceHolder.h>
@interface PandaSugedtionViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong) UITableView * PandaSugetionTableView;
@property(nonatomic,strong) NSMutableArray * PandaSugetionDataList;
@property(nonatomic,strong) UITextView * PandaSugetionTextView;
@end

@implementation PandaSugedtionViewController
-(NSMutableArray *)PandaSugetionDataList{
    if (!_PandaSugetionDataList) {
        _PandaSugetionDataList = [NSMutableArray array];
        
        PandaSugestionModels * PandaSugesitem = [[PandaSugestionModels alloc]init];
        PandaSugesitem.PandaSugestionStatus   = YES;
        PandaSugesitem.PandaSugestionText = @"产品不好用";
        [_PandaSugetionDataList addObject:PandaSugesitem];
        
        PandaSugestionModels * PandaSugesitem1 = [[PandaSugestionModels alloc]init];
        PandaSugesitem1.PandaSugestionStatus   = NO;
        PandaSugesitem1.PandaSugestionText = @"页面不好看";
        [_PandaSugetionDataList addObject:PandaSugesitem1];
        
        PandaSugestionModels * PandaSugesitem2 = [[PandaSugestionModels alloc]init];
        PandaSugesitem2.PandaSugestionStatus   = NO;
        PandaSugesitem2.PandaSugestionText = @"功能bug";
        [_PandaSugetionDataList addObject:PandaSugesitem2];
        
        PandaSugestionModels * PandaSugesitem3 = [[PandaSugestionModels alloc]init];
        PandaSugesitem3.PandaSugestionStatus   = NO;
        PandaSugesitem3.PandaSugestionText = @"内容太少,找不到想要的";
        [_PandaSugetionDataList addObject:PandaSugesitem3];
        
        PandaSugestionModels * PandaSugesitem4 = [[PandaSugestionModels alloc]init];
        PandaSugesitem4.PandaSugestionStatus   = NO;
        PandaSugesitem4.PandaSugestionText = @"其他";
        [_PandaSugetionDataList addObject:PandaSugesitem4];
        
        
    }
    return _PandaSugetionDataList;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"意见反馈";
    [self.view addSubview:self.PandaSugetionTableView];
    
    UIView * PandaSugestionTijiaoView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, K(80), K(60))];
    UIButton * PandaSugestionTijiaoBtn = [[UIButton alloc]initWithFrame:CGRectMake(K(20), K(12), K(40), K(20))];
    [PandaSugestionTijiaoBtn setTitle:@"提交" forState:UIControlStateNormal];
    [PandaSugestionTijiaoBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    PandaSugestionTijiaoBtn.titleLabel.font =[UIFont systemFontOfSize:14];
    [PandaSugestionTijiaoBtn addTarget:self action:@selector(PandaSugestionTijiaoBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [PandaSugestionTijiaoView addSubview:PandaSugestionTijiaoBtn];
    
    self.gk_navRightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:PandaSugestionTijiaoView];
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.6 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.PandaSugetionTextView becomeFirstResponder];
    });
}
-(void)PandaSugestionTijiaoBtnClick{
    
    if (self.PandaSugetionTextView.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"说点什么吧~"];
        return;
    }
//    if (![FilmFactoryToolModel FilmFactoryisLogin]) {
//        [self FilmFactoryBaseShowLoginVc];
//        return;
//    }
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD showSuccess:@"感谢支持!"];
        [self.navigationController popViewControllerAnimated:YES];
    });
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PandaSugetionDataList.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * PandaSugestionTijiaoBtnIdnetifer = @"PandaSugestionTableCell";
    PandaSugestionTableCell * PandaSugestionCell = [tableView dequeueReusableCellWithIdentifier:PandaSugestionTijiaoBtnIdnetifer];
    if (PandaSugestionCell == nil) {
        PandaSugestionCell =[[PandaSugestionTableCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:PandaSugestionTijiaoBtnIdnetifer];
    }
    PandaSugestionCell.pandaItem = self.PandaSugetionDataList[indexPath.row];
    return PandaSugestionCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return K(50);
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return K(50);
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return K(200);
}
-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIView * PandaSugestionFooterView = [UIView new];
    PandaSugestionFooterView.backgroundColor = [UIColor blackColor];
    UILabel * PandaSugestionFooterViewlb =[[UILabel alloc]initWithFrame:CGRectMake(K(15), K(17.5), K(120), K(15))];
    PandaSugestionFooterViewlb.font = [UIFont systemFontOfSize:14];
    PandaSugestionFooterViewlb.textColor = [UIColor whiteColor];
    PandaSugestionFooterViewlb.text = @"详细描述";
    [PandaSugestionFooterView addSubview:PandaSugestionFooterViewlb];
    
    
    UITextView * PandaSugetionTextView = [[UITextView alloc]initWithFrame:CGRectMake(0, K(50), SCREEN_Width, K(150))];
    PandaSugetionTextView.zw_placeHolder=  @"说说哪个功能设计反人类了!";
    PandaSugetionTextView.backgroundColor = LGDViewBJColor;
    PandaSugetionTextView.zw_placeHolderColor = [UIColor whiteColor];
    PandaSugetionTextView.textColor  = [UIColor whiteColor];
    [PandaSugestionFooterView addSubview:PandaSugetionTextView];
    _PandaSugetionTextView = PandaSugetionTextView;
    
    return PandaSugestionFooterView;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView  * PandaSugestionHeaderView = [UIView new];
    PandaSugestionHeaderView.backgroundColor = [UIColor blackColor];
    UILabel * PandaSugestionheadelb =[[UILabel alloc]initWithFrame:CGRectMake(K(15), K(17.5), K(120), K(15))];
    PandaSugestionheadelb.font = [UIFont systemFontOfSize:14];
    PandaSugestionheadelb.textColor = [UIColor whiteColor];
    PandaSugestionheadelb.text = @"吐槽一下";
    [PandaSugestionHeaderView addSubview:PandaSugestionheadelb];
    
    return PandaSugestionHeaderView;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    for (PandaSugestionModels * PandaSugesitem in self.PandaSugetionDataList) {
        PandaSugesitem.PandaSugestionStatus = NO;
    }
    PandaSugestionModels * PandaSugesitem =  self.PandaSugetionDataList[indexPath.row];
    PandaSugesitem.PandaSugestionStatus =  YES;
    [self.PandaSugetionTableView reloadData];
}
-(UITableView *)PandaSugetionTableView{
    if (!_PandaSugetionTableView) {
        _PandaSugetionTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, NaviH, SCREEN_Width, SCREEN_Height-NaviH-GK_SAFEAREA_BTM) style:UITableViewStylePlain];
        _PandaSugetionTableView.delegate = self;
        _PandaSugetionTableView.dataSource =self;
        _PandaSugetionTableView.separatorStyle = UITableViewCellSelectionStyleNone;
        _PandaSugetionTableView.showsVerticalScrollIndicator = NO;
        _PandaSugetionTableView.showsHorizontalScrollIndicator = NO;
        _PandaSugetionTableView.backgroundColor = [UIColor clearColor];
        _PandaSugetionTableView.scrollEnabled = NO;
    }
    return _PandaSugetionTableView;
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











