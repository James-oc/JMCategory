//
//  UILabel+JMExtension.m
//  JMCategory
//
//  Created by james on 15/4/1.
//  Copyright (c) 2015年 james. All rights reserved.
//

#import "UILabel+JMExtension.h"

@implementation UILabel (JMExtension)

#pragma mark - Line Height
- (void)setLineSpace:(float)lineSpace
                text:(NSString *)text {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:text];
    NSMutableParagraphStyle *paragraphStyle     = [[NSMutableParagraphStyle alloc] init];
    
    [paragraphStyle setLineSpacing:lineSpace];//调整行间距
    
    [attributedString addAttribute:NSParagraphStyleAttributeName
                             value:paragraphStyle
                             range:NSMakeRange(0, text.length)];
    
    self.text           = @"";
    self.attributedText = attributedString;
}

#pragma mark - Init
+ (UILabel *)labelWithFrame:(CGRect)frame
                   textFont:(UIFont *)textFont
                  textColor:(UIColor *)textColor {
    UILabel *label        = [[UILabel alloc] initWithFrame:frame];
    label.font            = textFont;
    label.textColor       = textColor;
    label.backgroundColor = [UIColor clearColor];
    
    return label;
}

+ (UILabel *)labelWithFrame:(CGRect)frame
                       text:(NSString *)text
                   textFont:(UIFont *)textFont
                  textColor:(UIColor *)textColor {
    UILabel *label        = [UILabel labelWithFrame:frame
                                           textFont:textFont
                                          textColor:textColor];
    label.text            = text;
    
    return label;
}

+ (UILabel *)labelWithFrame:(CGRect)frame
                       text:(NSString *)text
                   textFont:(UIFont *)textFont
                  textColor:(UIColor *)textColor
            backgroundColor:(UIColor *)backgroundColor {
    UILabel *label        = [UILabel labelWithFrame:frame
                                               text:text
                                           textFont:textFont
                                          textColor:textColor];
    label.backgroundColor = backgroundColor;
    
    return label;
}


+ (UILabel *)labelWithFrame:(CGRect)frame
                       text:(NSString *)text
                   textFont:(UIFont *)textFont
                  textColor:(UIColor *)textColor
              textAlignment:(NSTextAlignment)textAlignment {
    UILabel *label      = [self labelWithFrame:frame
                                          text:text
                                      textFont:textFont
                                     textColor:textColor];
    label.textAlignment = textAlignment;
    
    return label;
}

+ (UILabel *)labelWithFrame:(CGRect)frame
                       text:(NSString *)text
                   textFont:(UIFont *)textFont
                  textColor:(UIColor *)textColor
            backgroundColor:(UIColor *)backgroundColor
              textAlignment:(NSTextAlignment)textAlignment {
    UILabel *label        = [self labelWithFrame:frame
                                            text:text
                                        textFont:textFont
                                       textColor:textColor
                                   textAlignment:textAlignment];
    label.backgroundColor = backgroundColor;
    
    return label;
}

@end
