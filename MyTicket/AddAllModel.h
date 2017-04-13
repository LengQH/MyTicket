//
//  SupeBaserModel.h
//  MyTicket
//
//  Created by 冷求慧 on 16/4/24.
//  Copyright © 2016年 leng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddAllModel : NSObject
/**
 *  头部视图的名字
 */
@property (nonatomic,copy) NSString *headViewName;
/**
 *  尾部视图的名字
 */
@property (nonatomic,copy) NSString *footViewName;
/**
 *  存放样式模型
 */
@property (nonatomic,strong) NSArray *saveStyleModelObj;

// 不需要提供 方法 创建AddAllModel对象

//-(instancetype)initWithAllModel:(NSString *)headViewName footViewName:(NSString *)footViewName saveStyleMode:(NSArray *)saveStyleMode;
//+(instancetype)addAllModel:(NSString *)headViewName footViewName:(NSString *)footViewName saveStyleMode:(NSArray *)saveStyleMode;
@end
