//
//  AllBaseTableViewController.h
//  MyTicket
//
//  Created by 冷求慧 on 16/4/24.
//  Copyright © 2016年 leng. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AddAllModel.h"
#import "ArrowStyleModel.h"
#import "SwitchStyleModel.h"
#import "LabelStyleModel.h"

#import "SuperBaseTableViewCell.h"

@interface AllBaseTableViewController : UITableViewController
@property (nonatomic,strong) NSMutableArray *arrData;
@end
