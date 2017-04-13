//
//  MyCollectionCell.h
//  MyTicket
//
//  Created by 冷求慧 on 16/4/27.
//  Copyright © 2016年 leng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyCollectionModel.h"
@interface MyCollectionCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@property (nonatomic,assign) MyCollectionModel *myModel;
@end
