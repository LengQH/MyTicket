//
//  ShareViewController.m
//  MyTicket
//
//  Created by 冷求慧 on 16/4/24.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "ShareViewController.h"
#import <MessageUI/MessageUI.h>
@interface ShareViewController ()<MFMessageComposeViewControllerDelegate,MFMailComposeViewControllerDelegate>

@end

@implementation ShareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ArrowStyleModel *sinaModel=[ArrowStyleModel arrowModel:@"WeiboSina" titleName:@"新浪微博" VCID:nil];
    ArrowStyleModel *smsModel=[ArrowStyleModel arrowModel:@"SmsShare" titleName:@"短信分享" VCID:nil];
    smsModel.myBlock=^(){   //调起短信的操作
         // 利用该方式发送短信, 当短信发送完毕或者取消之后不会返回应用程序
//        [[UIApplication sharedApplication]openURL:[NSURL URLWithString:[NSString stringWithFormat:@"sms://%@",@"10086"]]];
        
        if([MFMessageComposeViewController canSendText]){ // 判断是否支持短信发送
            MFMessageComposeViewController *smsVC=[[MFMessageComposeViewController alloc]init];
            smsVC.body=@"这里是短息发送的具体内容";
            smsVC.recipients=@[@"10086"];
            smsVC.messageComposeDelegate=self;
            [self presentViewController:smsVC animated:YES completion:nil];
        }
        else{
            [MBProgressHUD showError:@"不能发送短信"];
        }
    };
    
    ArrowStyleModel *emailModel=[ArrowStyleModel arrowModel:@"MailShare" titleName:@"邮件分享" VCID:nil];
    emailModel.myBlock=^(){
        
//        [[UIApplication sharedApplication]openURL:[NSURL URLWithString:[NSString stringWithFormat:@"mailto://%@",@"1205632644@qq.com"]]];
        
        if ([MFMailComposeViewController canSendMail]) {
            MFMailComposeViewController *emailVC=[[MFMailComposeViewController alloc]init];
            emailVC.mailComposeDelegate=self;
            [emailVC setSubject:@"邮件的主题"];
            [emailVC setMessageBody:@"这里是邮件的内容" isHTML:NO];
            [emailVC setToRecipients:@[@"1205632644@qq.com"]];// 收件人列表
            [emailVC setCcRecipients:@[@"123456@qq.com"]];  // 抄送列表
            [emailVC setBccRecipients:@[@"345678@qq.com"]];  // 密送人列表
//            [emailVC addAttachmentData:<#(nonnull NSData *)#> mimeType:<#(nonnull NSString *)#> fileName:<#(nonnull NSString *)#>];// 添加其他数据
            [self presentViewController:emailVC animated:YES completion:nil];
        }
        
    };
    

    AddAllModel *allModel=[[AddAllModel alloc]init];
    allModel.saveStyleModelObj=@[sinaModel,smsModel,emailModel];
    
    [self.arrData addObject:allModel];
    
}
#pragma mark 发送短信的代理
- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result{
    if(result==MessageComposeResultFailed){
        [MBProgressHUD showError:@"发送短息失败"];
    }
    else if(result==MessageComposeResultCancelled){
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    else if(result==MessageComposeResultSent){
        [MBProgressHUD showError:@"发送短息成功"];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}
#pragma mark 发送邮件的代理
- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(nullable NSError *)error{
    [self dismissViewControllerAnimated:YES completion:nil];
    if(result==MFMailComposeResultCancelled){
        [MBProgressHUD showError:@"取消邮件发送"];
    }
    if(result==MFMailComposeResultSaved){
        [MBProgressHUD showError:@"邮件已保存"];
    }
    if(result==MFMailComposeResultSent){
        [MBProgressHUD showError:@"发送邮件成功"];
    }
    if(result==MFMailComposeResultFailed){
        [MBProgressHUD showError:@"发送邮件失败"];
    }
}
@end
