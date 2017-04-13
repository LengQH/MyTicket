//
//  CusTabBarView.m
//  MyTicket
//
//  Created by 冷求慧 on 16/4/13.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "CusTabBarView.h"
#import "CusButton.h"

@interface CusTabBarView (){
    NSInteger btnTag;
    NSMutableArray *arrAddBtn;
}
@end
@implementation CusTabBarView


-(void)addClickButton:(NSString *)selectImageName norImageName:(NSString *)norImageName{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{   // GCD 只做一次初始化
        arrAddBtn=[NSMutableArray array];
    });
    
    CusButton *button=[[CusButton alloc]init];
    [self addSubview:button];
    [arrAddBtn addObject:button];
    
    button.tag=btnTag;
    
    [button setImage:[UIImage imageNamed:norImageName] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:norImageName] forState:UIControlStateHighlighted];
    [button setImage:[UIImage imageNamed:selectImageName] forState:UIControlStateSelected];
    
    button.adjustsImageWhenHighlighted = NO; // 设置按钮高亮状态不调整图片
//    [button addTarget:self action:@selector(clickBtnAction:) forControlEvents:UIControlEventTouchUpInside]; // 用户按按钮后抬起
    [button addTarget:self action:@selector(clickBtnAction:) forControlEvents:UIControlEventTouchDown]; // 用户一按住按钮
    
    if(btnTag==0){
        button.selected=YES;
    }
    btnTag+=1;
}
#pragma mark 重新布局子视图的Frame
-(void)layoutSubviews{
    CGFloat  btnW=self.width/[self.subviews count];
    [self.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        obj.frame=CGRectMake(btnW*idx, 0, btnW, self.height);
    }];
}
#pragma mark 点击按钮的操作
-(void)clickBtnAction:(UIButton *)sender{
    
    for (int i=0; i<arrAddBtn.count; i++) {
        UIButton *button=arrAddBtn[i];
        if (button.tag==sender.tag) {
            button.selected=YES;
        }
        else{
            button.selected=NO;
        }
    }
    if([self.delegate respondsToSelector:@selector(didSelectButton:selectNum:)]){
        [self.delegate didSelectButton:self selectNum:sender.tag];
    }
}
@end
