//
//  UIColor+JMExtension.m
//  JMCategory
//
//  Created by james on 15/3/27.
//  Copyright (c) 2015年 james. All rights reserved.
//

#import "UIColor+JMExtension.h"

@implementation UIColor (JMExtension)
/**
 *@description 传递RGB值获取颜色
 *@params stringToConvert
 *@return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)stringToConvert {
    NSString *cString = [[stringToConvert stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    if ([cString hasPrefix:@"#"]) {
        cString = [cString substringFromIndex:1];
    }
    
    if ([cString length] != 6) {
        return [UIColor whiteColor];
    }
    
    NSRange range;
    range.location    = 0;
    range.length      = 2;
    NSString *rString = [cString substringWithRange:range];

    range.location    = 2;
    NSString *gString = [cString substringWithRange:range];

    range.location    = 4;
    NSString *bString = [cString substringWithRange:range];
    
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:1.0f];
}

@end
