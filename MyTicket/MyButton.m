//
//  MyButton.m
//  MyTicket
//
//  Created by 冷求慧 on 16/4/18.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "MyButton.h"

#define titleFont 16

@interface MyButton (){
    CGSize titleSize;
}
@end

@implementation MyButton

// xib 或者关联会会调用这个方法
- (instancetype)initWithCoder:(NSCoder *)coder{
    if (self = [super initWithCoder:coder]) {
        [self someSet];
    }
    return self;
}
// init 或者 initWithFrame会调用这个方法
-(instancetype)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
        [self someSet];
    }
    return self;
}
#pragma mark 一些设置
-(void)someSet{
    self.titleLabel.font=cusFont(titleFont);
    titleSize=[self.titleLabel.text sizeWithAttributes:@{NSFontAttributeName:cusFont(titleFont)}]; // 计算文字的最小宽,高
    self.imageView.contentMode=UIViewContentModeCenter;
}
#pragma mark 重置Title的Frame
- (CGRect)titleRectForContentRect:(CGRect)contentRect{
    return CGRectMake(0, 0, titleSize.width, self.height);
}
#pragma mark 重置UIImage的Frame
- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    return CGRectMake(titleSize.width,(self.height-titleSize.height)/2,self.height, titleSize.height);
    
}
@end
