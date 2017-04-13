//
//  BaseModel.h
//  MyTicket
//
//  Created by 冷求慧 on 16/4/24.
//  Copyright © 2016年 leng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseStyleModel : NSObject
/**
 *  图片的名字
 */
@property (nonatomic,copy) NSString *imageName;
/**
 * 标题的名字
 */
@property (nonatomic,copy) NSString *titleName;

-(instancetype)initWithModel:(NSString *)imageName titleName:(NSString *) titleName;
+(instancetype)baseModel:(NSString *)imageName titleName:(NSString *) titleName;
@end
