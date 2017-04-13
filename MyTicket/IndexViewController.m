//
//  IndexViewController.m
//  MyTicket
//
//  Created by 冷求慧 on 16/4/13.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "IndexViewController.h"

@interface IndexViewController ()

@end

@implementation IndexViewController
- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)nextAction:(UIButton *)sender {
    UIViewController *vc=[[UIViewController alloc]init];
    vc.title=@"测试控制器";
    vc.view.backgroundColor=[UIColor orangeColor];
    [self.navigationController pushViewController:vc animated:YES];
    
    NSString *strPath=[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject];
}

@end
