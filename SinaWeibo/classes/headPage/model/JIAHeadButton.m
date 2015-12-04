//
//  JIAHeadButton.m
//  SinaWeibo
//
//  Created by mac-025 on 15/11/25.
//  Copyright © 2015年 XuJiajia. All rights reserved.
//

#import "JIAHeadButton.h"

@implementation JIAHeadButton

-(instancetype)init
{

    if (self = [super init]) {

        self.imageView.contentMode = UIViewContentModeCenter;
        self.titleLabel.font = [UIFont systemFontOfSize:17];

    }
    return self;
}
-(CGRect)imageRectForContentRect:(CGRect)contentRect
{

    CGFloat imageX = contentRect.size.width - 30;
    CGFloat imageY = 5;
    CGFloat imageW = 20;
    CGFloat imageH = 20;
    return CGRectMake(imageX, imageY, imageW, imageH);

}

-(CGRect)titleRectForContentRect:(CGRect)contentRect
{

    CGFloat titleX = 20;
    CGFloat titleY = 0;
    CGFloat titleW = contentRect.size.width - 20;
    CGFloat titleH = contentRect.size.height;
    return CGRectMake(titleX, titleY, titleW, titleH);
}

@end
