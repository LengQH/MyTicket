//
//  MySetViewController.m
//  MyTicket
//
//  Created by 冷求慧 on 16/4/26.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "MySetViewController.h"
#import "PushServiceViewController.h"
#import "HelpViewController.h"
#import "ShareViewController.h"
#import "LookViewController.h"
#import "IntrCollectionViewController.h"
#import "AboutUsViewController.h"
@interface MySetViewController ()
@end

@implementation MySetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addDataWithSectionOne];
    [self addDataWithSectionTwo];
}
-(void)addDataWithSectionOne{
    ArrowStyleModel *pModel=[ArrowStyleModel arrowModel:@"MorePush" titleName:@"推送和提醒" VCID:@"pushServiceVC"];
    // 父类中的构造方法
    SwitchStyleModel *yModel=[[SwitchStyleModel alloc]initWithModel:@"handShake" titleName:@"摇一摇机选"];
    SwitchStyleModel *vModel=[SwitchStyleModel baseModel:@"sound_Effect" titleName:@"声音效果"];

    AddAllModel *addModelOne=[[AddAllModel alloc]init];
    addModelOne.saveStyleModelObj=@[pModel,yModel,vModel];
    addModelOne.headViewName=@"提醒设置";
    
    [self.arrData addObject:addModelOne];
}
-(void)addDataWithSectionTwo{
    
    ArrowStyleModel *checkModel=[ArrowStyleModel arrowModel:@"MoreUpdate" titleName:@"检查新版本" VCID:nil];
    checkModel.myBlock=^(){  // Block 回调
        [MBProgressHUD showSuccess:@"版本更新(Block)"];
    };
    ArrowStyleModel *helpModel=[ArrowStyleModel arrowModel:@"MoreHelp" titleName:@"帮助" VCID:@"helpVC"];
    ArrowStyleModel *shareModel=[ArrowStyleModel arrowModel:@"MoreShare" titleName:@"分享" VCID:@"shareVC"];
    ArrowStyleModel *lookModel=[ArrowStyleModel arrowModel:@"MoreMessage" titleName:@"查看消息" VCID:nil];
    ArrowStyleModel *intrModel=[ArrowStyleModel arrowModel:@"MoreNetease" titleName:@"产品推荐" VCID:@"intrVC"];
    ArrowStyleModel *aboutModel=[ArrowStyleModel arrowModel:@"MoreAbout" titleName:@"关于" VCID:@"aboutVC"];
    
    AddAllModel *addModelTwo=[[AddAllModel alloc]init];
    addModelTwo.saveStyleModelObj=@[checkModel,helpModel,shareModel,lookModel,intrModel,aboutModel];
    addModelTwo.headViewName=@"其他设置";
    [self.arrData addObject:addModelTwo];
    
}
@end
