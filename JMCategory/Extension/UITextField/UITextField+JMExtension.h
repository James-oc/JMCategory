//
//  UITextField+JMExtension.h
//  JMCategory
//
//  Created by shengxiao on 16/4/14.
//  Copyright © 2016年 james. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (JMExtension)

+ (UITextField *)textFieldWithFrame:(CGRect)rect
                    backgroundColor:(UIColor *)backgroundColor
                        placeholder:(NSString *)placeholder
                   placeholderColor:(UIColor *)placeholderColor
                           textFont:(UIFont *)textFont
                          textColor:(UIColor *)textColor
                           delegate:(id)delegate;

+ (UITextField *)textFieldWithFrame:(CGRect)rect
                        borderStyle:(UITextBorderStyle)borderStyle
                    backgroundColor:(UIColor *)backgroundColor
                        placeholder:(NSString *)placeholder
                   placeholderColor:(UIColor *)placeholderColor
                           textFont:(UIFont *)textFont
                          textColor:(UIColor *)textColor
                    clearButtonMode:(UITextFieldViewMode)clearButtonMode
                           delegate:(id)delegate;

@end
