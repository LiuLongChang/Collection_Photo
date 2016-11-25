//
//  XLLayout.m
//  Collection_Photo
//
//  Created by 朗月 on 16/4/5.
//  Copyright © 2016年 langyue. All rights reserved.
//

#import "XLLayout.h"

@implementation XLLayout


-(BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds{

    return YES;
    
}
-(void)prepareLayout{

    [super prepareLayout];
    
    //水平滚动
    self.scrollDirection=UICollectionViewScrollDirectionHorizontal;
    
    //内边距
    CGFloat insetGap=(self.collectionView.frame.size.width-self.itemSize.width)*0.5;

    self.sectionInset=UIEdgeInsetsMake(0, insetGap, 0, insetGap);
}
/*
 设置cell的显示大小
 
 @param rect范围
 
 @return 返回所有元素的布局
 */
- (NSArray*)layoutAttributesForElementsInRect:(CGRect)rect{
    
    NSArray *arr=[super layoutAttributesForElementsInRect:rect];
    
    //collectionView中心点的x值
    CGFloat centerX=self.collectionView.contentOffset.x+self.collectionView.frame.size.width*0.5;
    
    for (UICollectionViewLayoutAttributes *attributes in arr) {
        
        CGFloat gapX=ABS(attributes.center.x-centerX);
        CGFloat scale=1-gapX/self.collectionView.frame.size.width;
        
        attributes.transform=CGAffineTransformMakeScale(scale, scale);
    }
    return  arr;
}
@end
