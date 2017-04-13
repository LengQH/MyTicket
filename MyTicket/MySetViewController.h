//
//  MySetViewController.h
//  MyTicket
//
//  Created by 冷求慧 on 16/4/26.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "AllBaseTableViewController.h"

#warning 本类一定要继承 父视图控制器AllBaseTableViewController, 而且本类是在Storyboary中的TableViewController通过StoryboardID mySetVC关联的,最关键的一点是:本类关联的TVC里面的Cell关联的cell和Cell对应的ID一定要和AllBaseTableViewController中的Cell是一摸一样的,最好的做法就是:拷贝父视图控制器AllBaseTableViewController,修改关联的控制器类和StoryboaryID即可

@interface MySetViewController : AllBaseTableViewController

@end
