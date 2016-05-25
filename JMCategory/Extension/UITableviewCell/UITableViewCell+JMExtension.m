//
//  UITableViewCell+JMExtension.m
//  JMCategory
//
//  Created by james on 15/3/30.
//  Copyright (c) 2015年 james. All rights reserved.
//

#import "UITableViewCell+JMExtension.h"

#define UITableviewCell_JMExtension_IS_IOS7_Later    ([[[UIDevice currentDevice] systemVersion] floatValue]) >= 7

@implementation UITableViewCell (JMExtension)
/**
 *@description 获取当前view的父view
 *@return UIView
 */
- (UIView *)getSuperview {
    if (UITableviewCell_JMExtension_IS_IOS7_Later) {
        return self.superview.superview;
    }
    
    return self.superview;
}
@end
