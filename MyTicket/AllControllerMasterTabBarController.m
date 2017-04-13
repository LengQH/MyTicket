//
//  AllControllerMasterTabBarController.m
//  MyTicket
//
//  Created by 冷求慧 on 16/4/12.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "AllControllerMasterTabBarController.h"
#import "CusTabBarView.h"
@interface AllControllerMasterTabBarController ()<CusTabBarViewDelegate>

@end

@implementation AllControllerMasterTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createView];
    
    
}
#pragma mark 创建对应的视图
-(void)createView{
    CusTabBarView *cusTabBar=[[CusTabBarView alloc]initWithFrame:self.tabBar.bounds];
    cusTabBar.delegate=self;

    for (int i=0; i<[self.tabBar subviews].count; i++) {
        [cusTabBar addClickButton:[NSString stringWithFormat:@"TabBar%ziSel",i+1] norImageName:[NSString stringWithFormat:@"TabBar%zi",i+1]];
    }
    [self.tabBar addSubview:cusTabBar];
}
#pragma mark CusTabBarView的代理
-(void)didSelectButton:(CusTabBarView *)cusView selectNum:(NSInteger)selectNum{
    self.selectedIndex=selectNum;
}
@end
