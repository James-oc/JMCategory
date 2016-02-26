//
//  UIColor+JMExtension.h
//  JMCategory
//
//  Created by james on 15/3/27.
//  Copyright (c) 2015年 james. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (JMExtension)

/**
 *@description 传递RGB值获取颜色
 *@params      stringToConvert
 *@return      UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)stringToConvert;

@end
