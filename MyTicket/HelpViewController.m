//
//  HelpViewController.m
//  MyTicket
//
//  Created by 冷求慧 on 16/4/24.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "HelpViewController.h"
#import "HelpModel.h"
#import "HelpWebViewController.h"
@interface HelpViewController (){
    NSMutableArray *addHelpModel;
}

@end

@implementation HelpViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    
    NSString *strPath=[[NSBundle mainBundle]pathForResource:@"help.json" ofType:nil];
    NSData *myData=[NSData dataWithContentsOfFile:strPath];
    NSArray *arrJsonData=[NSJSONSerialization  JSONObjectWithData:myData options:NSJSONReadingMutableContainers error:nil];  // 解析本地的JSON数据,里面的是数组装字典的结构
    
    addHelpModel=[NSMutableArray array];
    for (NSDictionary *dic in arrJsonData) {
        [addHelpModel addObject:[HelpModel helpModel:dic]]; //将字典转为模型,并用数组装起来
    }
    
    NSMutableArray *arrStyleModel=[NSMutableArray array]; // 通过模型数组创建Cell的样式数组
    for (HelpModel *helpModel in addHelpModel) {
        ArrowStyleModel *linkModel=[ArrowStyleModel arrowModel:nil titleName:helpModel.title VCID:nil];
        [arrStyleModel addObject:linkModel];
    }
    
    AddAllModel *allModel=[[AddAllModel alloc]init];
    allModel.saveStyleModelObj=arrStyleModel;
    
    [self.arrData addObject:allModel];
    
}
#pragma mark 重写父类的方法(UITableView的Delegate)
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    HelpModel *helpModel=addHelpModel[indexPath.row];
    HelpWebViewController *helpWebVC=[self.storyboard instantiateViewControllerWithIdentifier:@"helpVControl"];
    helpWebVC.myHelpModel=helpModel;
    UINavigationController *tNavigaVC=[[UINavigationController alloc]initWithRootViewController:helpWebVC];
    [self presentViewController:tNavigaVC animated:YES completion:nil];
}
@end
