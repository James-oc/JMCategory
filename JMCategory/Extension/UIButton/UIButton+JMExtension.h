//
//  UIButton+JMExtension.h
//  JMCategory
//
//  Created by james on 15/4/1.
//  Copyright (c) 2015年 james. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSInteger,CImageTitleBtnType) {
    CImageUpTitleBottom,       // 图片上文本下
    CImageLeftTitleRight,
    CImageAndTitleCoincide,    // 图片上文本下重合
};

@interface UIButton (JMExtension)

+ (UIButton *)customItem:(CGRect)frame
           withImageName:(NSString *)imageName
        highlightedImage:(NSString *)highlighted
               addTarget:(id)target
                  action:(SEL)action;

+(UIButton *) buttonWithFrame:(CGRect) frame withButtonType:(UIButtonType) btnType withTitleColor:(UIColor *) titleColor withTitleFont:(UIFont *) titleFont withTitle:(NSString *) title withLineBreakMode:(NSLineBreakMode) lineBreakMode;

+(UIButton *) getImageBtnWithTitle:(NSString *) title withImageName:(NSString *) imageName withFont:(UIFont *) textFont withTextColor:(UIColor *) textColor withBtnType:(UIButtonType) btnType withImageTitleBtnType:(CImageTitleBtnType) imageTitleBtnType;

+(UIButton *) getImageBtnWithImageTitleBtnType:(CImageTitleBtnType) imageTitleBtnType title:(NSString *) title unSelectedImageName:(NSString *) unSelectedImageName selectedImageName:(NSString *) selectedImageName unSelectedTextColor:(UIColor *) unSelectedColor selectedTextColor:(UIColor *) selectedColor withTextFont:(UIFont *) textFont withBtnType:(UIButtonType) btnType;

@end
