//
//  StartNumViewController.m
//  MyTicket
//
//  Created by 冷求慧 on 16/5/28.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "StartNumViewController.h"

@interface StartNumViewController ()

@end

@implementation StartNumViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AddAllModel *allModelOne=[[AddAllModel alloc]init];
    SwitchStyleModel *switchOne=[[SwitchStyleModel alloc]initWithModel:nil titleName:@"双色球"];
    SwitchStyleModel *switchTwo=[[SwitchStyleModel alloc]initWithModel:nil titleName:@"大乐透"];
    allModelOne.saveStyleModelObj=@[switchOne,switchTwo];
    allModelOne.headViewName=@"苹果公司是美国的一家高科技公司。";
    
    
    [self.arrData addObject:allModelOne];
}
@end
