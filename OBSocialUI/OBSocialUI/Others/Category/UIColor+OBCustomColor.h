//
//  UIColor+OBCustomColor.h
//  OBSocialUI
//
//  Created by DarrenW on 16/6/23.
//  Copyright © 2016年 oneBug. All rights reserved.
//
/**
 *  用来转换十六进制的颜色
 */

#import <UIKit/UIKit.h>

@interface UIColor (OBCustomColor)

/**
 *  根据传入的16进制字符串,生成RGB格式的颜色
 *
 *  @param string 16进制字符
 *
 *  @return RGB格式的颜色
 */
+ (UIColor *) ty_colorWithHex:(NSString *)string;

@end
