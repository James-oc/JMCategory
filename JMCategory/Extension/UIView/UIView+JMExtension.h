//
//  UIView+JMExtension.h
//  JMCategory
//
//  Created by james on 15/3/27.
//  Copyright (c) 2015年 james. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (JMExtension)
/**
 *@description 获取当前view的Controller
 *@return UIViewController
 */
- (UIViewController *)getViewController;

+ (UIView *)viewWithFrame:(CGRect)frame
          backgroundColor:(UIColor *)backgroundColor;

@end
