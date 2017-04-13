//
//  ArrowStyleModel.m
//  MyTicket
//
//  Created by 冷求慧 on 16/4/24.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "ArrowStyleModel.h"

@implementation ArrowStyleModel
-(instancetype)initWithArrowModel:(NSString *)imageName titleName:(NSString *) titleName VCID:(NSString *)VCID{
    if (self=[super initWithModel:imageName titleName:titleName]) {
        self.VCID=VCID;
    }
    return self;
}
+(instancetype)arrowModel:(NSString *)imageName titleName:(NSString *) titleName VCID:(NSString *)VCID{
    return [[ArrowStyleModel alloc]initWithArrowModel:imageName titleName:titleName VCID:VCID];
}
@end
