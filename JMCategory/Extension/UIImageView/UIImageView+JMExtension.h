//
//  UIImageView+JMExtension.h
//  JMCategory
//
//  Created by shengxiao on 16/4/19.
//  Copyright © 2016年 james. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (JMExtension)

+ (UIImageView *)imageViewWithFrame:(CGRect)frame;

+ (UIImageView *)imageViewWithFrame:(CGRect)frame
                    backgroundColor:(UIColor *)backgroundColor;

+ (UIImageView *)imageViewWithFrame:(CGRect)frame
                    backgroundColor:(UIColor *)backgroundColor
             userInteractionEnabled:(BOOL)enabled;

+ (UIImageView *)imageViewWithFrame:(CGRect)frame
                        contentMode:(UIViewContentMode)contentMode;

+ (UIImageView *)imageViewWithFrame:(CGRect)frame
                        contentMode:(UIViewContentMode)contentMode
                    backgroundColor:(UIColor *)backgroundColor;

+ (UIImageView *)imageViewWithFrame:(CGRect)frame
                        contentMode:(UIViewContentMode)contentMode
                    backgroundColor:(UIColor *)backgroundColor
             userInteractionEnabled:(BOOL)enabled;

+ (UIImageView *)imageViewWithFrame:(CGRect)frame
                              image:(UIImage *)image
                        contentMode:(UIViewContentMode)contentMode;

+ (UIImageView *)imageViewWithFrame:(CGRect)frame
                              image:(UIImage *)image
                        contentMode:(UIViewContentMode)contentMode
             userInteractionEnabled:(BOOL)enabled;

+ (UIImageView *)imageViewWithFrame:(CGRect)frame
                              image:(UIImage *)image
                    backgroundColor:(UIColor *)backgroundColor;

+ (UIImageView *)imageViewWithFrame:(CGRect)frame
                              image:(UIImage *)image
                    backgroundColor:(UIColor *)backgroundColor
             userInteractionEnabled:(BOOL)enabled;

+ (UIImageView *)imageViewWithFrame:(CGRect)frame
                              image:(UIImage *)image
                        contentMode:(UIViewContentMode)contentMode
                    backgroundColor:(UIColor *)backgroundColor;

+ (UIImageView *)imageViewWithFrame:(CGRect)frame
                              image:(UIImage *)image
                        contentMode:(UIViewContentMode)contentMode
                    backgroundColor:(UIColor *)backgroundColor
             userInteractionEnabled:(BOOL)enabled;

@end
