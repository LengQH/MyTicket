//
//  AllNavigationViewController.m
//  MyTicket
//
//  Created by 冷求慧 on 16/4/14.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "AllNavigationViewController.h"

@interface AllNavigationViewController ()

@end

@implementation AllNavigationViewController

+(void)initialize{  // 只会初始化一次
    
    UINavigationBar *cusNavigationBar=[UINavigationBar appearance];
    [cusNavigationBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    [cusNavigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:18],NSForegroundColorAttributeName:[UIColor whiteColor]}];
    [cusNavigationBar setTintColor:[UIColor whiteColor]]; // 设置 系统返回箭头的颜色为 白色

    
}
- (void)viewDidLoad {
    [super viewDidLoad];
}
#pragma mark 重写Push的方法,隐藏TabBar
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{    
    if (self.viewControllers.count>0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}
@end
