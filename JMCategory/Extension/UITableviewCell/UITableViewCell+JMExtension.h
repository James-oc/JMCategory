//
//  UITableViewCell+JMExtension.h
//  JMCategory
//
//  Created by james on 15/3/30.
//  Copyright (c) 2015年 james. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (JMExtension)

/**
 *@description 获取当前cell的父view
 *@return      UIView
 */
- (UIView *)getSuperview;

@end
