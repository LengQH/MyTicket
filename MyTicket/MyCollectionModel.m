//
//  MyCollectionModel.m
//  MyTicket
//
//  Created by 冷求慧 on 16/4/27.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "MyCollectionModel.h"

@implementation MyCollectionModel
-(instancetype)initWithMyModel:(NSArray *)arr{
    if (self=[super init]) {
        self.imageName=arr[0];
        self.titleName=arr[1];
    }
    return self;
    
}
+(instancetype)myCollectionModel:(NSArray *)arr{
    return [[self alloc]initWithMyModel:arr];
}
@end
