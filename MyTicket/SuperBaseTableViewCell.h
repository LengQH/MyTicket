//
//  SuperBaseTableViewCell.h
//  MyTicket
//
//  Created by 冷求慧 on 16/4/24.
//  Copyright © 2016年 leng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseStyleModel.h"

@interface SuperBaseTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;
@property (weak, nonatomic) IBOutlet UILabel *myTitle;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageLeftDistance;

/**
 *  模式样式对象
 */
@property (nonatomic,strong) BaseStyleModel *styleModel;

+(instancetype)cellWithTable:(UITableView *)tableView;
@end
