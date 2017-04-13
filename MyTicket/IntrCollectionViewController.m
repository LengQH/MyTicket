//
//  IntrCollectionViewController.m
//  MyTicket
//
//  Created by 冷求慧 on 16/4/27.
//  Copyright © 2016年 leng. All rights reserved.
//

#import "IntrCollectionViewController.h"
#import "MyCollectionCell.h"
#import "MyCollectionModel.h"

#define distanceWithLeftRight 8

#define collectionWH (screenW-distanceWithLeftRight*5)/4

@interface IntrCollectionViewController ()
@property (nonatomic,strong) NSMutableArray *arrData;
@end
@implementation IntrCollectionViewController

static NSString * const reuseIdentifier = @"myCoCell";

-(NSMutableArray *)arrData{
    if (_arrData==nil) {
        _arrData=[NSMutableArray array];
        
        NSArray *arr=@[@[@"movie",@"网易电影票"],@[@"newsapp",@"网易新闻"],@[@"open",@"网易公开课"],@[@"tvguide",@"网易电视指南"],@[@"reader",@"网易阅读"],@[@"cloudphotos",@"网易相册"],@[@"shoujiyou",@"网易手机邮"],@[@"newb",@"网页微博"],@[@"youdao",@"有道词典"],@[@"fanfan",@"饭饭"]];
        
        NSMutableArray *addModel=[NSMutableArray array];
        [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSArray *arrDa=arr[idx];
            MyCollectionModel *myModel=[MyCollectionModel myCollectionModel:arrDa];
            [addModel addObject:myModel];
            
        }];
        _arrData=addModel;
        
    }
    return _arrData;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self.collectionView registerClass:[MyCollectionCell class] forCellWithReuseIdentifier:reuseIdentifier]; // MyCollectionCell 已经在故事面板中的缓存池,不需要注册
    
    UICollectionViewFlowLayout *layOut=[[UICollectionViewFlowLayout alloc]init];
    layOut.itemSize=CGSizeMake(collectionWH, collectionWH); // item的W和H
    layOut.minimumInteritemSpacing=distanceWithLeftRight; // 每一个Item的Distance
    layOut.minimumLineSpacing=distanceWithLeftRight;     // 每一行Item的Distance
    layOut.headerReferenceSize=CGSizeMake(0, distanceWithLeftRight); // CollectionView的HeadView的上边距
//    layOut.sectionInset=UIEdgeInsetsMake(0, distanceWithLeftRight, 0, distanceWithLeftRight);
    self.collectionView.collectionViewLayout=layOut;
}


#pragma mark <UICollectionViewDataSource>
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.arrData.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MyCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    cell.myModel=self.arrData[indexPath.row];
    return cell;
}
@end
