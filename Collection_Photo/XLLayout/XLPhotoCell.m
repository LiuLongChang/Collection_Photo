//
//  XLPhotoCell.m
//  Collection_Photo
//
//  Created by 朗月 on 16/4/5.
//  Copyright © 2016年 langyue. All rights reserved.
//

#import "XLPhotoCell.h"

@implementation XLPhotoCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.imageView.layer.borderColor=[UIColor whiteColor].CGColor;
    self.imageView.layer.borderWidth=5;
    
    
}

@end
