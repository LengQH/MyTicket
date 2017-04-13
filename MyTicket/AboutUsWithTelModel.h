//
//  AboutUsWithTelModel.h
//  MyTicket
//
//  Created by ma c on 16/6/4.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "ArrowStyleModel.h"

@interface AboutUsWithTelModel : ArrowStyleModel

@property (nonatomic,copy)NSString *leftTitleName;
@property (nonatomic,copy)NSString *rightTitleName;

-(instancetype)modelWithTelModel:(NSString *)leftTitleName rightTitleName:(NSString *)rightTitleName;
+(instancetype)aboutUsWithTelModel:(NSString *)leftTitleName rightTitleName:(NSString *)rightTitleName;
@end
