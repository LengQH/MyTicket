//
//  MyCollectionModel.h
//  MyTicket
//
//  Created by 冷求慧 on 16/4/27.
//  Copyright © 2016年 leng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyCollectionModel : NSObject
@property (nonatomic,copy)NSString *imageName;
@property (nonatomic,copy)NSString *titleName;

-(instancetype)initWithMyModel:(NSArray *)arr;
+(instancetype)myCollectionModel:(NSArray *)arr;
@end
