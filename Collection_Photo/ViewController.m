//
//  ViewController.m
//  Collection_Photo
//
//  Created by 朗月 on 16/4/5.
//  Copyright © 2016年 langyue. All rights reserved.
//

#import "ViewController.h"
#import "XLLayout.h"
#import "XLPhotoCell.h"
@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    XLLayout *layout=[[XLLayout alloc]init];
    
    layout.itemSize=CGSizeMake(160,160);
    
    CGFloat collectionW=self.view.frame.size.width;
    
    CGFloat collectionH=200;
    
    UICollectionView  *collectionView=[[UICollectionView alloc]
                                       initWithFrame:CGRectMake(0, 200, collectionW, collectionH) collectionViewLayout:layout];
    
    
    collectionView.delegate=self;
    collectionView.dataSource=self;
    
    
    [self.view addSubview:collectionView];
    
    [collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([XLPhotoCell class]) bundle:nil] forCellWithReuseIdentifier:@"cell"];
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{

    
    return 20;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{


    XLPhotoCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.imageView.image=[UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",indexPath.item+1]];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
