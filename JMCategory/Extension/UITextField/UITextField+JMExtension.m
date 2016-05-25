//
//  UITextField+JMExtension.m
//  JMCategory
//
//  Created by shengxiao on 16/4/14.
//  Copyright © 2016年 james. All rights reserved.
//

#import "UITextField+JMExtension.h"

@implementation UITextField (JMExtension)

+ (UITextField *)textFieldWithFrame:(CGRect)rect
                    backgroundColor:(UIColor *)backgroundColor
                        placeholder:(NSString *)placeholder
                   placeholderColor:(UIColor *)placeholderColor
                           textFont:(UIFont *)textFont
                          textColor:(UIColor *)textColor
                           delegate:(id)delegate {
    return [self textFieldWithFrame:rect
                        borderStyle:UITextBorderStyleNone
                    backgroundColor:backgroundColor
                        placeholder:placeholder
                   placeholderColor:placeholderColor
                           textFont:textFont
                          textColor:textColor
                    clearButtonMode:UITextFieldViewModeWhileEditing
                           delegate:delegate];
}

+ (UITextField *)textFieldWithFrame:(CGRect)rect
                        borderStyle:(UITextBorderStyle)borderStyle
                    backgroundColor:(UIColor *)backgroundColor
                        placeholder:(NSString *)placeholder
                   placeholderColor:(UIColor *)placeholderColor
                           textFont:(UIFont *)textFont
                          textColor:(UIColor *)textColor
                    clearButtonMode:(UITextFieldViewMode)clearButtonMode
                           delegate:(id)delegate {
    UITextField *textField    = [[UITextField alloc]initWithFrame:rect];
    textField.borderStyle     = borderStyle;
    textField.backgroundColor = backgroundColor;
    textField.font            = textFont;
    textField.textColor       = textColor;
    textField.clearButtonMode = clearButtonMode;
    textField.delegate        = delegate;
    
    if ([textField respondsToSelector:@selector(setAttributedPlaceholder:)]) {
        textField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:placeholder attributes:@{NSForegroundColorAttributeName: placeholderColor}];
    } else {
        // iOS6之前
    }
    
    return textField;
}
@end
