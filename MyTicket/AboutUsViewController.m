//
//  AboutUsViewController.m
//  MyTicket
//
//  Created by ma c on 16/6/4.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "AboutUsViewController.h"
#import "AboutUsWithTelModel.h"
#import "AboutOur.h"
@interface AboutUsViewController ()
@property (nonatomic,strong)UIWebView *myWebView;

@end

@implementation AboutUsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.tableHeaderView=[[AboutOur alloc]initWithFrame:CGRectMake(0, 0, screenW, 200)];
    

    NSString *telNum=@"123456";
    
    AddAllModel *mainModelOne=[[AddAllModel alloc]init];
    
    AboutUsWithTelModel *modelOne=[[AboutUsWithTelModel alloc]modelWithTelModel:@"评分支持" rightTitleName:@""];
    AboutUsWithTelModel *modelTwo=[[AboutUsWithTelModel alloc]modelWithTelModel:@"客服电话" rightTitleName:telNum];
    modelTwo.myBlock=^(){
        self.myWebView=[[UIWebView alloc]initWithFrame:CGRectZero];
        [self.myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel://%@",@"123456"]]]];
        
    };
    mainModelOne.saveStyleModelObj=@[modelOne,modelTwo];
    [self.arrData addObject:mainModelOne];
}
@end
