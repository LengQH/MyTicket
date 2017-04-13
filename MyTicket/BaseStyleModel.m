//
//  BaseModel.m
//  MyTicket
//
//  Created by 冷求慧 on 16/4/24.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "BaseStyleModel.h"

@implementation BaseStyleModel
-(instancetype)initWithModel:(NSString *)imageName titleName:(NSString *) titleName{
    if(self=[super init]){
        self.imageName=imageName;
        self.titleName=titleName;
    }
    return self;
}
+(instancetype)baseModel:(NSString *)imageName titleName:(NSString *) titleName{
    return [[self alloc]initWithModel:imageName titleName:titleName];
}
@end
