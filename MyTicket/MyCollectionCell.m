//
//  MyCollectionCell.m
//  MyTicket
//
//  Created by 冷求慧 on 16/4/27.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "MyCollectionCell.h"

@implementation MyCollectionCell

-(void)setMyModel:(MyCollectionModel *)myModel{
    self.myImageView.image=[UIImage imageNamed:myModel.imageName];
    self.myLabel.text=myModel.titleName;
}
@end
