//
//  HelpModel.h
//  MyTicket
//
//  Created by 冷求慧 on 16/5/28.
//  Copyright © 2016年 leng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HelpModel : NSObject
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *html;
@property (nonatomic,copy) NSString *idValue;

-(instancetype)initWithModel:(NSDictionary *)dicValue;
+(instancetype)helpModel:(NSDictionary *)dicValue;
@end
