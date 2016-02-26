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
 *@description  获取当前view的Controller
 *@return       UIViewController
 */
- (UIViewController *)getViewController;

/**
 *@description 获取UIView对象
 *@params      frame
 *@params      bgColor
 *@return      UIView
 */
+ (UIView *)viewWithFrame:(CGRect) frame
      withBackgroundColor:(UIColor *) bgColor;

@end
