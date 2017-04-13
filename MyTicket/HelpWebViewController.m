//
//  HelpWebViewController.m
//  MyTicket
//
//  Created by ma c on 16/6/1.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "HelpWebViewController.h"

@interface HelpWebViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *myWebView;

@end

@implementation HelpWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadUISet];
}
#pragma mark 一些UI设置
-(void)loadUISet{
    self.title=self.myHelpModel.title;
    self.view.backgroundColor=[UIColor whiteColor];
    
    UIButton *backButton=[[UIButton alloc]initWithFrame:CGRectMake(0, 0, 44, 44)];
    backButton.titleLabel.font=cusFont(15);
    [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [backButton setTintColor:[UIColor whiteColor]];
    [backButton setTitle:@"返回" forState:UIControlStateNormal];
    [backButton setTitle:@"返回" forState:UIControlStateHighlighted];
    [backButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [backButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithCustomView:backButton];
    
    self.myWebView.delegate=self;
    
    // 加载本地 Html
    
    // 方法一
    NSString *strPath=[[NSBundle mainBundle]pathForResource:self.myHelpModel.html ofType:nil];
    NSData *data=[NSData dataWithContentsOfFile:strPath];
    NSString *strWithHtml=[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
    [self.myWebView loadHTMLString:strWithHtml baseURL:nil];
    
    // 方法二
//    NSString *strPath=[[NSBundle mainBundle]pathForResource:self.myHelpModel.html ofType:nil];
//    NSURL *url=[[NSURL alloc]initFileURLWithPath:strPath];
//    NSURLRequest *request=[[NSURLRequest alloc]initWithURL:url];
//    [self.myWebView loadRequest:request];
    
}
#pragma mark 返回操作
-(void)backAction{
    [self dismissViewControllerAnimated:YES completion:nil];
}
#pragma mark WebView-的-Delegate
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    return YES;
}
- (void)webViewDidStartLoad:(UIWebView *)webView{
}
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    // 调用JS的方法
    NSString *strJS=[NSString stringWithFormat:@"window.location.href = '#%@';",self.myHelpModel.idValue];
    [webView stringByEvaluatingJavaScriptFromString:strJS];
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{}

@end
