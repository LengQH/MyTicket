//
//  AllBaseTableViewController.m
//  MyTicket
//
//  Created by 冷求慧 on 16/4/24.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "AllBaseTableViewController.h"

#define headViewH 32
@interface AllBaseTableViewController ()

@end

@implementation AllBaseTableViewController
-(NSMutableArray *)arrData{
    if (_arrData==nil) {
        _arrData=[NSMutableArray array];
    }
    return _arrData;
}
- (void)viewDidLoad {
    [super viewDidLoad];
}
#pragma mark - Table view 的 source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.arrData.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    AddAllModel *allModel=self.arrData[section];
    return allModel.saveStyleModelObj.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    AddAllModel *allModel=self.arrData[indexPath.section];
    SuperBaseTableViewCell *cell=[SuperBaseTableViewCell cellWithTable:tableView];
    cell.styleModel=allModel.saveStyleModelObj[indexPath.row];
    return cell;
}
#pragma mark - Table view 的 delegate
#pragma mark 头部标题
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    AddAllModel *allModel=self.arrData[section];
    if (allModel.headViewName) {
        return allModel.headViewName;
    }
    return nil;
}
#pragma mark 尾部标题
- (nullable NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    AddAllModel *allModel=self.arrData[section];
    if (allModel.footViewName) {
        return allModel.footViewName;
    }
    return nil;
}
#pragma mark 头部标题View的高度
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    AddAllModel *allModel=self.arrData[section];
    if(allModel.headViewName){
        return headViewH;
    }
    return CGFLOAT_MIN;
}
#pragma mark 尾部标题View的高度
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    AddAllModel *allModel=self.arrData[section];
    if (allModel.footViewName) {
        return headViewH;
    }
    return CGFLOAT_MIN;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    AddAllModel *allModel=self.arrData[indexPath.section];
    BaseStyleModel *baseModel=allModel.saveStyleModelObj[indexPath.row];
    if ([baseModel isKindOfClass:[ArrowStyleModel class]]) {
        ArrowStyleModel *arrModel=(ArrowStyleModel *)baseModel;
        if(arrModel.myBlock){   // block不为空就调用  否则如果类名不为空就跳转控制器
            arrModel.myBlock();
        }
        else{
            if(arrModel.VCID){
                UIViewController *viewConroller=[self.storyboard instantiateViewControllerWithIdentifier:arrModel.VCID];
                viewConroller.title=baseModel.titleName;
                [self.navigationController pushViewController:viewConroller animated:NO];
            }
        }
    }
}
@end
