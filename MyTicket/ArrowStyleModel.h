//
//  ArrowStyleModel.h
//  MyTicket
//
//  Created by 冷求慧 on 16/4/24.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "BaseStyleModel.h"

typedef void(^MyBlock)();  // 定义一个Block 类名为myBlock 没有返回值,也没有参数

@interface ArrowStyleModel : BaseStyleModel

/**
 *  故事面板中视图控制器的ID
 */
@property (nonatomic,copy) NSString  *VCID;  // 箭头样式才需要ID,要跳转控制器

@property (nonatomic,copy) MyBlock myBlock;  // Block回调

-(instancetype)initWithArrowModel:(NSString *)imageName titleName:(NSString *) titleName VCID:(NSString *)VCID;
+(instancetype)arrowModel:(NSString *)imageName titleName:(NSString *) titleName VCID:(NSString *)VCID;

@end
