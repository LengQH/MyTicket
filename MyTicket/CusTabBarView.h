//
//  CusTabBarView.h
//  MyTicket
//
//  Created by 冷求慧 on 16/4/13.
//  Copyright © 2016年 leng. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CusTabBarView;
@protocol CusTabBarViewDelegate <NSObject>

@required
/**
 *  点击按钮
 *
 *  @param cusView   CusTabBarView 对象
 *  @param selectNum 选中的按钮下标
 */
-(void)didSelectButton:(CusTabBarView *)cusView selectNum:(NSInteger)selectNum;

@end

@interface CusTabBarView : UIView

@property (nonatomic,weak) id<CusTabBarViewDelegate> delegate;
/**
 *  创建TabBar的按钮
 *
 *  @param selectImageName 选中的图片
 *  @param norImageName    正常的状态下的图片
 */
-(void)addClickButton:(NSString *)selectImageName norImageName:(NSString *)norImageName;


@end
