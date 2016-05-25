//
//  UILabel+JMExtension.h
//  JMCategory
//
//  Created by james on 15/4/1.
//  Copyright (c) 2015年 james. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (JMExtension)

#pragma mark - Line Height
- (void)setLineSpace:(float)lineSpace
                text:(NSString *)text;

#pragma mark - Init
+ (UILabel *)labelWithFrame:(CGRect)frame
                   textFont:(UIFont *)textFont
                  textColor:(UIColor *)textColor;

+ (UILabel *)labelWithFrame:(CGRect)frame
                       text:(NSString *)text
                   textFont:(UIFont *)textFont
                  textColor:(UIColor *)textColor;

+ (UILabel *)labelWithFrame:(CGRect)frame
                       text:(NSString *)text
                   textFont:(UIFont *)textFont
                  textColor:(UIColor *)textColor
            backgroundColor:(UIColor *)backgroundColor;

+ (UILabel *)labelWithFrame:(CGRect)frame
                       text:(NSString *)text
                   textFont:(UIFont *)textFont
                  textColor:(UIColor *)textColor
              textAlignment:(NSTextAlignment)textAlignment;

+ (UILabel *)labelWithFrame:(CGRect)frame
                       text:(NSString *)text
                   textFont:(UIFont *)textFont
                  textColor:(UIColor *)textColor
            backgroundColor:(UIColor *)backgroundColor
              textAlignment:(NSTextAlignment)textAlignment;

@end
