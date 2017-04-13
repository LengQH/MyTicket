//
//  OkAnimationViewController.m
//  MyTicket
//
//  Created by 冷求慧 on 16/5/28.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "OkAnimationViewController.h"

@interface OkAnimationViewController ()

@end

@implementation OkAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AddAllModel *modelOne=[[AddAllModel alloc]init];
    SwitchStyleModel *styleOne=[[SwitchStyleModel alloc]initWithModel:nil titleName:@"中奖动画"];
    modelOne.saveStyleModelObj=@[styleOne];
    modelOne.headViewName=@"中奖动画的后部说明";
    
    [self.arrData addObject:modelOne];

}

@end
