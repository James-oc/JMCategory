//
//  UIView+JMExtension.m
//  JMCategory
//
//  Created by james on 15/3/27.
//  Copyright (c) 2015年 james. All rights reserved.
//

#import "UIView+JMExtension.h"

#define IS_IOS7_Later    ([[[UIDevice currentDevice] systemVersion] floatValue]) >= 7

@implementation UIView (JMExtension)
/**
 *@description 获取当前view的Controller
 *@return UIViewController
 */
-(UIViewController *) getViewController {
    UIView *view = self;
    while (view) {
        UIResponder *nextResponder = view.nextResponder;
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)nextResponder;
        }
        
        view = view.superview;
    }
    
    return nil;
}

+(UIView *) viewWithFrame:(CGRect) frame withBackgroundColor:(UIColor *) bgColor {
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = bgColor;
    
    return view;
}

@end
