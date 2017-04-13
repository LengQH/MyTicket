//
//  AboutUsWithTelModel.m
//  MyTicket
//
//  Created by ma c on 16/6/4.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "AboutUsWithTelModel.h"

@implementation AboutUsWithTelModel

-(instancetype)modelWithTelModel:(NSString *)leftTitleName rightTitleName:(NSString *)rightTitleName{
    if(self==[super init]){
        self.leftTitleName=leftTitleName;
        self.rightTitleName=rightTitleName;
    }
    return self;
}
+(instancetype)aboutUsWithTelModel:(NSString *)leftTitleName rightTitleName:(NSString *)rightTitleName{
    return [[self alloc]modelWithTelModel:leftTitleName rightTitleName:rightTitleName];
}
@end
