//
//  SuperBaseTableViewCell.m
//  MyTicket
//
//  Created by 冷求慧 on 16/4/24.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "SuperBaseTableViewCell.h"
#import "ArrowStyleModel.h"
#import "SwitchStyleModel.h"
#import "LabelStyleModel.h"
#import "AboutUsWithTelModel.h"

@interface SuperBaseTableViewCell ()
@property (nonatomic,strong) UISwitch *mySwitch;
@property (nonatomic,strong) UILabel *myLabel;
@end
static NSString *cellID=@"superCell";

@implementation SuperBaseTableViewCell
#pragma mark 创建 开关按钮
-(UISwitch *)mySwitch{
    if (_mySwitch==nil) {
        _mySwitch=[[UISwitch alloc]init];  //这里不需要设置Frame,UISwitch有默认的W和高
        NSUserDefaults *userDelfa=[NSUserDefaults standardUserDefaults];
        BOOL switchStatus=[userDelfa boolForKey:self.myTitle.text];
        _mySwitch.on=switchStatus;
        [_mySwitch addTarget:self action:@selector(openSwitch:) forControlEvents:UIControlEventValueChanged];
    }
    return _mySwitch;
}
-(UILabel *)myLabel{
    if (_myLabel==nil) {
        _myLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 70, 24)]; // 一定要设置UILabe的Frame(原来我还以为将UILabel添加到self.accessoryView上面就有默认的Frame,这个是错误的)
        _myLabel.font=cusFont(13);
        _myLabel.textAlignment=NSTextAlignmentRight;
    }
    return _myLabel;
}
#pragma mark 设置相关数据
-(void)setStyleModel:(BaseStyleModel *)styleModel{
    if(styleModel.imageName){  // 有图片数据
        self.myImageView.contentMode=UIViewContentModeScaleAspectFit;
        self.myImageView.image=[UIImage imageNamed:styleModel.imageName];
    }
    if (styleModel.titleName) { // 有标题数据
         self.myTitle.text=styleModel.titleName;
    }
    if ([styleModel isKindOfClass:[ArrowStyleModel class]]) {  // 箭头样式
        self.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
        if ([styleModel isKindOfClass:[AboutUsWithTelModel class]]) {  // 箭头样式和打电话的标题
            AboutUsWithTelModel *myTelModel=(AboutUsWithTelModel *)styleModel;
            
            self.textLabel.text=myTelModel.leftTitleName;
            self.detailTextLabel.text=myTelModel.rightTitleName;
        }
    }
    else if([styleModel isKindOfClass:[SwitchStyleModel class]]){  // 开关样式Cell 就创建Switch控件
        self.accessoryView=self.mySwitch;
    }
    else if ([styleModel isKindOfClass:[LabelStyleModel class]]){ // 2个label样式
        self.myTitle.text=styleModel.imageName;
        self.myLabel.text=styleModel.titleName;
        self.accessoryView=self.myLabel;
        
    }
    self.selectionStyle=UITableViewCellSelectionStyleNone;
}
#pragma mark 开关按钮的操作(记录按钮的状态)
-(void)openSwitch:(UISwitch *)swi{
    NSUserDefaults *userDelfa=[NSUserDefaults standardUserDefaults];
    [userDelfa setBool:swi.on forKey:self.myTitle.text];
    [userDelfa synchronize];
}
#pragma mark 封装Cell
+(instancetype)cellWithTable:(UITableView *)tableView{
    
    SuperBaseTableViewCell *superCell=[tableView dequeueReusableCellWithIdentifier:cellID];
    if (superCell==nil) {
        superCell=[[SuperBaseTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    return superCell;
}
@end
