//
//  ScoreingViewController.m
//  MyTicket
//
//  Created by 冷求慧 on 16/5/28.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "ScoreingViewController.h"

@interface ScoreingViewController ()

@end

@implementation ScoreingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AddAllModel *allModel=[[AddAllModel alloc]init];
    SwitchStyleModel *modelOne=[[SwitchStyleModel alloc]init];
    allModel.saveStyleModelObj=@[modelOne];
    allModel.footViewName=@"提醒我的尾部标题";
    
    AddAllModel *allModelTwo=[[AddAllModel alloc]init];
    LabelStyleModel *modelTwo=[[LabelStyleModel alloc]initWithModel:@"起开时间" titleName:@"2016-5-6"];
    LabelStyleModel *modelThree=[[LabelStyleModel alloc]initWithModel:@"结束时间" titleName:@"2016-7-12"];
    allModelTwo.saveStyleModelObj=@[modelTwo,modelThree];
    
    [self.arrData addObjectsFromArray:@[allModel,allModelTwo]];
}

@end
