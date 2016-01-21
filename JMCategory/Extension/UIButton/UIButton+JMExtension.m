//
//  UIButton+JMExtension.m
//  JMCategory
//
//  Created by james on 15/4/1.
//  Copyright (c) 2015年 james. All rights reserved.
//

#import "UIButton+JMExtension.h"

@implementation UIButton (JMExtension)

+ (UIButton *)customItem:(CGRect)frame
           withImageName:(NSString *)imageName
        highlightedImage:(NSString *)highlighted
               addTarget:(id)target
                  action:(SEL)action {
    UIButton *customItem = [UIButton buttonWithType:UIButtonTypeCustom];
    [customItem setImage:[UIImage imageNamed:imageName]
                forState:UIControlStateNormal];
    [customItem setImage:[UIImage imageNamed:highlighted]
                forState:UIControlStateHighlighted];
    [customItem setFrame:frame];
    [customItem addTarget:target
                   action:action
         forControlEvents:UIControlEventTouchUpInside];
    
    return customItem;
}

+(UIButton *) buttonWithFrame:(CGRect) frame withButtonType:(UIButtonType) btnType withTitleColor:(UIColor *) titleColor withTitleFont:(UIFont *) titleFont withTitle:(NSString *) title withLineBreakMode:(NSLineBreakMode) lineBreakMode {
    UIButton *btn                = [UIButton buttonWithType:btnType];
    btn.frame                    = frame;
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    btn.titleLabel.font          = titleFont;
    btn.titleLabel.lineBreakMode = lineBreakMode;
    
    return btn;
}

+(UIButton *) getImageBtnWithTitle:(NSString *) title withImageName:(NSString *) imageName withFont:(UIFont *) textFont withTextColor:(UIColor *) textColor withBtnType:(UIButtonType) btnType withImageTitleBtnType:(CImageTitleBtnType) imageTitleBtnType {
    UIButton    *btn           = [UIButton buttonWithType:btnType];
    
    [btn setTitleColor:textColor forState:UIControlStateNormal];
    btn.titleLabel.font = textFont;
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
        btn.imageEdgeInsets = UIEdgeInsetsMake(-btn.titleLabel.intrinsicContentSize.height-offset/2, 0, 0, -btn.titleLabel.intrinsicContentSize.width);
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
    
    CGRect frame = btn.frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    
    return btn;
}

+(UIButton *) getImageBtnWithImageTitleBtnType:(CImageTitleBtnType) imageTitleBtnType title:(NSString *) title unSelectedImageName:(NSString *) unSelectedImageName selectedImageName:(NSString *) selectedImageName unSelectedTextColor:(UIColor *) unSelectedColor selectedTextColor:(UIColor *) selectedColor withTextFont:(UIFont *) textFont withBtnType:(UIButtonType) btnType {
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
    
    CGRect frame = btn.frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    
    return btn;
}

@end
