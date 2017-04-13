
//
//  HelpModel.m
//  MyTicket
//
//  Created by 冷求慧 on 16/5/28.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "HelpModel.h"

@implementation HelpModel

-(instancetype)initWithModel:(NSDictionary *)dicValue{
    if (self=[super init]) {
        self.title=dicValue[@"title"];
        self.html=dicValue[@"html"];
        self.idValue=dicValue[@"id"];
    }
    return self;
}
+(instancetype)helpModel:(NSDictionary *)dicValue{
    return [[self alloc]initWithModel:dicValue];
}
@end
