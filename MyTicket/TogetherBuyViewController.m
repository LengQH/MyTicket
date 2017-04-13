//
//  TogetherBuyViewController.m
//  MyTicket
//
//  Created by 冷求慧 on 16/4/13.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "TogetherBuyViewController.h"
#import "MyButton.h"

#define alertViewH 64
@interface TogetherBuyViewController (){
    BOOL  isShowView;
    UIView *alertView;
}
@property (weak, nonatomic) IBOutlet MyButton *myCustomButton;

@end

@implementation TogetherBuyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    isShowView=YES;
}
- (IBAction)clickUp:(MyButton *)sender {
    
    if (isShowView) {  // 改变箭头的方向和创建弹出视图
        isShowView=!isShowView;
        self.myCustomButton.imageView.transform=CGAffineTransformMakeRotation(M_PI);
        alertView=[[UIView alloc]initWithFrame:CGRectMake(0, statusH+navigationBarH,screenW, alertViewH)];
        [self.navigationController.view addSubview:alertView];
        [alertView setBackgroundColor:[UIColor orangeColor]];
    }
    else{ // 恢复箭头和关闭弹出视图
        isShowView=!isShowView;
        self.myCustomButton.imageView.transform=CGAffineTransformMakeRotation(0);
        [alertView removeFromSuperview];
    }
}

@end


