//
//  MyViewController.m
//  MyTicket
//
//  Created by 冷求慧 on 16/4/13.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "MyViewController.h"
#import "AllBaseTableViewController.h"
#import "MySetViewController.h"
@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)setAction:(UIBarButtonItem *)sender {
    
    MySetViewController *mySetVC=[self.storyboard instantiateViewControllerWithIdentifier:@"mySetVC"];
    
    [self.navigationController pushViewController:mySetVC animated:YES];
    
}
@end
