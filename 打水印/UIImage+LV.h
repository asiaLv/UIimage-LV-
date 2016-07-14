//
//  UIImage+LV.h
//  打水印
//
//  Created by lvAsia on 16/7/14.
//  Copyright © 2016年 answe lv. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^ImageBlock) (UIImage *image);
@interface UIImage (LV)
+ (void)waterImageWithBg:(NSString *)bg
                    logo:(NSString *)logo
                   scale:(CGFloat)scale
              imageBlock:(ImageBlock)imageBlock;
@end
