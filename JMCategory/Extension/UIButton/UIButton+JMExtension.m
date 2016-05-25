//
//  UIButton+Util.m
//  XCharger
//
//  Created by shengxiao on 15/12/1.
//  Copyright © 2015年 shengxiao. All rights reserved.
//

#import "UIButton+JMExtension.h"

@implementation UIButton (JMExtension)

#pragma mark - Init Button
+ (UIButton *)buttonWithFrame:(CGRect)frame
                      btnType:(UIButtonType)btnType
                        title:(NSString *)title
                    titleFont:(UIFont *)titleFont
                   titleColor:(UIColor *)titleColor {
    return [self buttonWithFrame:frame
                         btnType:btnType
                           title:title
                       titleFont:titleFont
                      titleColor:titleColor
                   lineBreakMode:NSLineBreakByWordWrapping
                 backgroundColor:[UIColor clearColor]
                   textAlignment:NSTextAlignmentLeft
                     contentMode:UIViewContentModeScaleToFill
                          target:nil
                        selector:nil];
}

+ (UIButton *)buttonWithFrame:(CGRect)frame
                      btnType:(UIButtonType)btnType
                        title:(NSString *)title
                    titleFont:(UIFont *)titleFont
                   titleColor:(UIColor *)titleColor
                       target:(id)target
                     selector:(SEL)selector {
    return [self buttonWithFrame:frame
                         btnType:btnType
                           title:title
                       titleFont:titleFont
                      titleColor:titleColor
                   lineBreakMode:NSLineBreakByWordWrapping
                 backgroundColor:[UIColor clearColor]
                   textAlignment:NSTextAlignmentLeft
                     contentMode:UIViewContentModeScaleToFill
                          target:target
                        selector:selector];
}

+ (UIButton *)buttonWithFrame:(CGRect)frame
                      btnType:(UIButtonType)btnType
                        title:(NSString *)title
                    titleFont:(UIFont *)titleFont
                   titleColor:(UIColor *)titleColor
                lineBreakMode:(NSLineBreakMode)lineBreakMode
              backgroundColor:(UIColor *)backgroundColor
                textAlignment:(NSTextAlignment)textAlignment
                  contentMode:(UIViewContentMode)contentMode {
    return [self buttonWithFrame:frame
                         btnType:btnType
                           title:title
                       titleFont:titleFont
                      titleColor:titleColor
                   lineBreakMode:lineBreakMode
                 backgroundColor:backgroundColor
                   textAlignment:textAlignment
                     contentMode:contentMode
                          target:nil
                        selector:nil];
}

+ (UIButton *)buttonWithFrame:(CGRect)frame
                      btnType:(UIButtonType)btnType
                        title:(NSString *)title
                    titleFont:(UIFont *)titleFont
                   titleColor:(UIColor *)titleColor
                lineBreakMode:(NSLineBreakMode)lineBreakMode
              backgroundColor:(UIColor *)backgroundColor
                textAlignment:(NSTextAlignment)textAlignment
                  contentMode:(UIViewContentMode)contentMode
                       target:(id)target
                     selector:(SEL)selector {
    UIButton *btn                = [UIButton buttonWithType:btnType];
    btn.frame                    = frame;
    btn.titleLabel.font          = titleFont;
    btn.titleLabel.lineBreakMode = lineBreakMode;
    btn.backgroundColor          = backgroundColor;
    btn.titleLabel.textAlignment = textAlignment;
    btn.contentMode              = contentMode;

    [btn setTitle:title
         forState:UIControlStateNormal];
    
    [btn setTitleColor:titleColor
              forState:UIControlStateNormal];
    
    if (selector && target) {
        [btn addTarget:target
                action:selector
      forControlEvents:UIControlEventTouchUpInside];
    }
    
    return btn;
}

+ (UIButton *)buttonWithFrame:(CGRect)frame
                      btnType:(UIButtonType)btnType
                        image:(UIImage *)image {
    return [self buttonWithFrame:frame
                         btnType:btnType
                           image:image
                 backgroundColor:[UIColor clearColor]
                     contentMode:UIViewContentModeScaleToFill
               contentEdgeInsets:UIEdgeInsetsZero
                          target:nil
                        selector:nil];
}

+ (UIButton *)buttonWithFrame:(CGRect)frame
                      btnType:(UIButtonType)btnType
                        image:(UIImage *)image
                       target:(id)target
                     selector:(SEL)selector {
    return [self buttonWithFrame:frame
                         btnType:btnType
                           image:image
                 backgroundColor:[UIColor clearColor]
                     contentMode:UIViewContentModeScaleToFill
               contentEdgeInsets:UIEdgeInsetsZero
                          target:target
                        selector:selector];
}

+ (UIButton *)buttonWithFrame:(CGRect)frame
                      btnType:(UIButtonType)btnType
                        image:(UIImage *)image
              backgroundColor:(UIColor *)backgroundColor
                  contentMode:(UIViewContentMode)contentMode
            contentEdgeInsets:(UIEdgeInsets)edgeInsets {
    return [self buttonWithFrame:frame
                         btnType:btnType
                           image:image
                 backgroundColor:backgroundColor
                     contentMode:contentMode
               contentEdgeInsets:edgeInsets
                          target:nil
                        selector:nil];
}

+ (UIButton *)buttonWithFrame:(CGRect)frame
                      btnType:(UIButtonType)btnType
                        image:(UIImage *)image
              backgroundColor:(UIColor *)backgroundColor
                  contentMode:(UIViewContentMode)contentMode
            contentEdgeInsets:(UIEdgeInsets)edgeInsets
                       target:(id)target
                     selector:(SEL)selector {
    UIButton *btn         = [UIButton buttonWithType:btnType];
    btn.frame             = frame;
    btn.backgroundColor   = backgroundColor;
    btn.contentMode       = contentMode;
    btn.contentEdgeInsets = edgeInsets;
    
    if (image) {
        image               = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [btn setImage:image forState:UIControlStateNormal];
    }
    
    if (selector && target) {
        [btn addTarget:target
                action:selector
      forControlEvents:UIControlEventTouchUpInside];
    }
    
    return btn;
}

#pragma mark - Init ImageButton
+ (UIButton *)getImageBtnWithType:(UIButtonType)btnType
                     titleBtnType:(CImageTitleBtnType)imageTitleBtnType
                            title:(NSString *)title
                        imageName:(NSString *)imageName
                        titleFont:(UIFont *)titleFont
                       titleColor:(UIColor *)titleColor {
    UIButton    *btn    = [UIButton buttonWithType:btnType];
    btn.titleLabel.font = titleFont;

    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    
    UIImage *image = nil;
    
    if (imageName != nil) {
        image = [UIImage imageNamed:imageName];
        [btn setImage:image forState:UIControlStateNormal];
    }
    
    if (imageTitleBtnType == CImageLeftTitleRight) {
        btn.contentEdgeInsets = UIEdgeInsetsMake(2,0, 2, 0);
        btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        btn.contentVerticalAlignment   = UIControlContentVerticalAlignmentBottom;
        
        [btn setTitle:[@" " stringByAppendingString:title] forState:UIControlStateNormal];
        [btn sizeToFit];
    }else if (imageTitleBtnType == CImageUpTitleBottom) {
        btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        btn.contentVerticalAlignment   = UIControlContentVerticalAlignmentBottom;
        
        [btn setTitle:title forState:UIControlStateNormal];
        CGFloat offset = 0.0f;
        [btn sizeToFit];
        btn.titleEdgeInsets = UIEdgeInsetsMake(0, -btn.imageView.frame.size.width, -btn.imageView.frame.size.height-offset/2, 0);
        btn.imageEdgeInsets = UIEdgeInsetsMake(-btn.titleLabel.intrinsicContentSize.height - offset / 2, 0, 0, -btn.titleLabel.intrinsicContentSize.width);
    }else if (imageTitleBtnType == CImageAndTitleCoincide) {
        btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        btn.contentVerticalAlignment   = UIControlContentVerticalAlignmentCenter;
        
        [btn setTitle:title forState:UIControlStateNormal];
        [btn sizeToFit];
        
        if (image) {
            [btn setTitleEdgeInsets:UIEdgeInsetsMake(0.0, -image.size.width, 0.0, 0.0)];
        }
        
        [btn setImageEdgeInsets:UIEdgeInsetsMake(0.0, 0.0, 0.0, -btn.titleLabel.bounds.size.width)];
    }
    
    CGRect frame   = btn.frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    btn.frame      = frame;
    
    return btn;
}

+ (UIButton *)getImageBtnWithWithType:(UIButtonType)btnType
                         titleBtnType:(CImageTitleBtnType)imageTitleBtnType
                                title:(NSString *)title
                            titleFont:(UIFont *)textFont
                  unSelectedImageName:(NSString *)unSelectedImageName
                    selectedImageName:(NSString *)selectedImageName
                  unSelectedTextColor:(UIColor *)unSelectedColor
                    selectedTextColor:(UIColor *)selectedColor {
    UIButton    *btn    = [UIButton buttonWithType:btnType];
    
    btn.titleLabel.font = textFont;
    [btn setTitle:title ? :@"" forState:UIControlStateNormal];
    
    if (unSelectedColor) {
        [btn setTitleColor:unSelectedColor forState:UIControlStateNormal];
    }
    if (selectedColor) {
        [btn setTitleColor:selectedColor forState:UIControlStateSelected];
    }
    
    UIImage *unSelectedImage = nil;
    if (unSelectedImageName != nil) {
        unSelectedImage = [UIImage imageNamed:unSelectedImageName];
        unSelectedImage = [unSelectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [btn setImage:unSelectedImage forState:UIControlStateNormal];
    }
    
    UIImage *selectedImage = nil;
    if (selectedImageName != nil) {
        selectedImage = [UIImage imageNamed:selectedImageName];
        selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [btn setImage:selectedImage forState:UIControlStateSelected];
    }
    
    if (imageTitleBtnType == CImageLeftTitleRight) {
        btn.contentEdgeInsets = UIEdgeInsetsMake(2,0, 2, 0);
        btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        btn.contentVerticalAlignment   = UIControlContentVerticalAlignmentBottom;
        
        [btn setTitle:[@" " stringByAppendingString:title] forState:UIControlStateNormal];
        [btn sizeToFit];
    }else if (imageTitleBtnType == CImageUpTitleBottom) {
        btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        btn.contentVerticalAlignment   = UIControlContentVerticalAlignmentCenter;
        
        [btn setTitle:title forState:UIControlStateNormal];
        CGFloat offset = 0.0f;
        [btn sizeToFit];
        btn.titleEdgeInsets = UIEdgeInsetsMake(10, -btn.imageView.frame.size.width, -btn.imageView.frame.size.height-offset/2, 0);
        btn.imageEdgeInsets = UIEdgeInsetsMake(-btn.titleLabel.intrinsicContentSize.height-offset/2, 0, 10, -btn.titleLabel.intrinsicContentSize.width);
    }else if (imageTitleBtnType == CImageAndTitleCoincide) {
        btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        btn.contentVerticalAlignment   = UIControlContentVerticalAlignmentCenter;
        
        [btn setTitle:title forState:UIControlStateNormal];
        [btn sizeToFit];
        
        UIImage *image = unSelectedImage ? : (selectedImage ? : nil);
        if (image) {
            [btn setTitleEdgeInsets:UIEdgeInsetsMake(0.0, -image.size.width, 0.0, 0.0)];
        }
        
        [btn setImageEdgeInsets:UIEdgeInsetsMake(0.0, 0.0, 0.0, -btn.titleLabel.bounds.size.width)];
    }
    
    CGRect frame   = btn.frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    btn.frame      = frame;
    
    return btn;
}

@end
