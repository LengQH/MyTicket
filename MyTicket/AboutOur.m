//
//  AboutOur.m
//  MyTicket
//
//  Created by ma c on 16/6/4.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "AboutOur.h"

@implementation AboutOur

-(instancetype)initWithFrame:(CGRect)frame{
    if (self==[super initWithFrame:frame]) {
        self=[[[NSBundle mainBundle]loadNibNamed:@"AboutUs" owner:self options:nil] lastObject];
        self.frame=frame;
    }
    return self;
}
-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self==[super initWithCoder:aDecoder]) {
        
        self=[[[NSBundle mainBundle]loadNibNamed:@"AboutOur" owner:self options:nil] lastObject];
    }
    return self;
}
@end
