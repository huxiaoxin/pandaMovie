//
//  PandaCenterViewController.m
//  PandaMovie
//
//  Created by zjlk03 on 2021/5/4.
//

#import "PandaCenterViewController.h"
#import "PandaCenterHeaderView.h"
#import "PandaCenterTableViewCell.h"
#import "PandaAboutusViewController.h"
#import "PandaMyCollecedViewController.h"
#import "PandaMyyuYueViewController.h"
#import "PandaMySendZoneViewController.h"
#import "PandaSugedtionViewController.h"
#import "PandaCenterChangeInfoController.h"
@interface PandaCenterViewController ()<UITableViewDelegate,UITableViewDataSource,PandaCenterHeaderViewDelegate>
@property(nonatomic,strong) UITableView * PandaCenterTableView;
@property(nonatomic,strong) NSMutableArray * PandaDataArr;
@property(nonatomic,strong) PandaCenterHeaderView * pandaHeaderView;
@end

@implementation PandaCenterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navigationBar.hidden = YES;
    
    [self.view addSubview:self.PandaCenterTableView];
    _PandaCenterTableView.tableHeaderView = self.pandaHeaderView;

}
- (PandaCenterHeaderView *)pandaHeaderView{
    if (!_pandaHeaderView) {
        _pandaHeaderView = [[PandaCenterHeaderView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(130))];
        _pandaHeaderView.delegate = self;
    }
    return _pandaHeaderView;
}
- (NSMutableArray *)PandaDataArr{
    if (!_PandaDataArr) {
        _PandaDataArr = [[NSMutableArray alloc]initWithArray:@[@[@"我的发布",@"我的预约",@"我的收藏"],@[@"清除缓存",@"意见反馈"],@[@"关于我们",@"版本号"]]];
    }
    return _PandaDataArr;
}
- (UITableView *)PandaCenterTableView{
    if (!_PandaCenterTableView) {
        _PandaCenterTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, GK_STATUSBAR_HEIGHT, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_STATUSBAR_HEIGHT-GK_TABBAR_HEIGHT) style:UITableViewStylePlain];
        _PandaCenterTableView.delegate = self;
        _PandaCenterTableView.dataSource = self;
        _PandaCenterTableView.showsVerticalScrollIndicator = NO;
        _PandaCenterTableView.showsHorizontalScrollIndicator = NO;
        _PandaCenterTableView.separatorStyle = UITableViewCellSelectionStyleNone;
        _PandaCenterTableView.backgroundColor = [UIColor clearColor];
    }
    return _PandaCenterTableView;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.PandaDataArr[section] count];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.PandaDataArr.count;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return RealWidth(65);
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return RealWidth(10);
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    UIView * header = [UIView new];
    header.backgroundColor = [UIColor blackColor];
    return  header;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            PandaMySendZoneViewController * pandaSendVc = [[PandaMySendZoneViewController alloc]init];
            pandaSendVc.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pandaSendVc animated:YES];
        }else if (indexPath.row == 1){
            PandaMyyuYueViewController * padaYuyueVc = [[PandaMyyuYueViewController alloc]init];
            padaYuyueVc.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:padaYuyueVc animated:YES];
        }else{
            PandaMyCollecedViewController * pandaMyVc = [[PandaMyCollecedViewController alloc]init];
            pandaMyVc.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pandaMyVc animated:YES];
        }
    }else if (indexPath.section == 1){
        if (indexPath.row == 0) {
            [self PandaClearCacoutlaSize];
        }else if (indexPath.row == 1){
            PandaSugedtionViewController * pandaSugeVc = [[PandaSugedtionViewController alloc]init];
            pandaSugeVc.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pandaSugeVc animated:YES];
        }
    }else if (indexPath.section == 2){
        if (indexPath.row == 0) {
            PandaAboutusViewController * pandaVc = [[PandaAboutusViewController alloc]init];
            pandaVc.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pandaVc animated:YES];
        }else{
            
        }
    }
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * PandaIdentifer  = @"PandaCenterTableViewCell";
    PandaCenterTableViewCell * pandaCell = [tableView dequeueReusableCellWithIdentifier:PandaIdentifer];
    if (pandaCell == nil) {
        pandaCell = [[PandaCenterTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:PandaIdentifer];
    }
    [pandaCell PandaCenterTableViewCellConfigWithDataArr:self.PandaDataArr indexPath:indexPath];
    return pandaCell;
}
- (void)PandaClearCacoutlaSize{
    NSString*cachePath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory,NSUserDomainMask,YES)objectAtIndex:0];
    NSArray*files = [[NSFileManager defaultManager]subpathsAtPath:cachePath];
    for(NSString *p in files){
        NSError*error;
        
        NSString*path = [cachePath stringByAppendingString:[NSString stringWithFormat:@"/%@",p]];
        
        if([[NSFileManager defaultManager]fileExistsAtPath:path])
        {
            BOOL isRemove = [[NSFileManager defaultManager]removeItemAtPath:path error:&error];
            if(isRemove) {
                [LCProgressHUD showSuccess:@"清除成功"];
                [self.PandaCenterTableView reloadData];
            }else{
                
            }
        }
    }
}
#pragma mark--PandaCenterHeaderViewDelegate
-(void)PandaCenterHeaderViewWithChangeInfo{
    [[GKNavigationBarConfigure sharedInstance] updateConfigure:^(GKNavigationBarConfigure *configure) {
        configure.backgroundColor = [UIColor whiteColor];
        configure.backStyle = GKNavigationBarBackStyleBlack;
        configure.titleColor = [UIColor blackColor];
    }];
    PandaCenterChangeInfoController  * pandaInfoVc = [[PandaCenterChangeInfoController alloc]init];
    pandaInfoVc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:pandaInfoVc animated:YES];
    
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
