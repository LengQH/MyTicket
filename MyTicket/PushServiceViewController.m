//
//  SetViewController.m
//  MyTicket
//
//  Created by 冷求慧 on 16/4/24.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "PushServiceViewController.h"

@interface PushServiceViewController ()

@end

@implementation PushServiceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addSectionOne];
}
-(void)addSectionOne{
    ArrowStyleModel *openModel=[ArrowStyleModel arrowModel:nil titleName:@"开奖号码推送" VCID:@"startNumVC"];
    ArrowStyleModel *okModel=[ArrowStyleModel arrowModel:nil titleName:@"中奖动画" VCID:@"okAnimaVC"];
    ArrowStyleModel *mathModel=[ArrowStyleModel arrowModel:nil titleName:@"比分直播" VCID:@"scoreVC"];
    ArrowStyleModel *alertModel=[ArrowStyleModel arrowModel:nil titleName:@"购彩定时提醒" VCID:nil];
    
    AddAllModel *addModel=[[AddAllModel alloc]init];
    addModel.saveStyleModelObj=@[openModel,okModel,mathModel,alertModel];
    [self.arrData addObject:addModel];
}
@end
