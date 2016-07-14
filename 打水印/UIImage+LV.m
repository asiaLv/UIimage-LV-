//
//  UIImage+LV.m
//  打水印
//
//  Created by lvAsia on 16/7/14.
//  Copyright © 2016年 answe lv. All rights reserved.
//

#import "UIImage+LV.h"

@implementation UIImage (LV)
+ (void)waterImageWithBg:(NSString *)bg logo:(NSString *)logo scale:(CGFloat)scale imageBlock:(ImageBlock)imageBlock{

    
    UIImage *bgImage = [UIImage imageNamed:bg];
    
    // 1.创建一个基于位图的上下文(开启一个基于位图的上下文)
    UIGraphicsBeginImageContextWithOptions(bgImage.size, NO, 0.0);
    
    // 2.画背景
    [bgImage drawInRect:CGRectMake(0, 0, bgImage.size.width, bgImage.size.height)];
    
    // 3.画右下角的水印
    UIImage *waterImage = [UIImage imageNamed:logo];
    CGFloat margin = 10;
    CGFloat waterW = waterImage.size.width * scale;
    CGFloat waterH = waterImage.size.height * scale;
    CGFloat waterX = margin;
    CGFloat waterY = margin;
    [waterImage drawInRect:CGRectMake(waterX, waterY, waterW, waterH)];
    
    // 4.从上下文中取得制作完毕的UIImage对象
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    // 5.结束上下文
    UIGraphicsEndImageContext();
    
    imageBlock(newImage);

}

@end
