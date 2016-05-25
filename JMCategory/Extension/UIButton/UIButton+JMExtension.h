//
//  UIButton+Util.h
//  XCharger
//
//  Created by shengxiao on 15/12/1.
//  Copyright © 2015年 shengxiao. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSInteger,CImageTitleBtnType) {
    CImageUpTitleBottom,       // 图片上文本下
    CImageLeftTitleRight,
    CImageAndTitleCoincide,    // 图片上文本下重合
};

@interface UIButton (JMExtension)

#pragma mark - Init Button
+ (UIButton *)buttonWithFrame:(CGRect)frame
                      btnType:(UIButtonType)btnType
                        title:(NSString *)title
                    titleFont:(UIFont *)titleFont
                   titleColor:(UIColor *)titleColor;

+ (UIButton *)buttonWithFrame:(CGRect)frame
                      btnType:(UIButtonType)btnType
                        title:(NSString *)title
                    titleFont:(UIFont *)titleFont
                   titleColor:(UIColor *)titleColor
                       target:(id)target
                     selector:(SEL)selector;

+ (UIButton *)buttonWithFrame:(CGRect)frame
                      btnType:(UIButtonType)btnType
                        title:(NSString *)title
                    titleFont:(UIFont *)titleFont
                   titleColor:(UIColor *)titleColor
                lineBreakMode:(NSLineBreakMode)lineBreakMode
              backgroundColor:(UIColor *)backgroundColor
                textAlignment:(NSTextAlignment)textAlignment
                  contentMode:(UIViewContentMode)contentMode;

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
                     selector:(SEL)selector;

+ (UIButton *)buttonWithFrame:(CGRect)frame
                      btnType:(UIButtonType)btnType
                        image:(UIImage *)image;

+ (UIButton *)buttonWithFrame:(CGRect)frame
                      btnType:(UIButtonType)btnType
                        image:(UIImage *)image
                       target:(id)target
                     selector:(SEL)selector;

+ (UIButton *)buttonWithFrame:(CGRect)frame
                      btnType:(UIButtonType)btnType
                        image:(UIImage *)image
              backgroundColor:(UIColor *)backgroundColor
                  contentMode:(UIViewContentMode)contentMode
            contentEdgeInsets:(UIEdgeInsets)edgeInsets;

+ (UIButton *)buttonWithFrame:(CGRect)frame
                      btnType:(UIButtonType)btnType
                        image:(UIImage *)image
              backgroundColor:(UIColor *)backgroundColor
                  contentMode:(UIViewContentMode)contentMode
            contentEdgeInsets:(UIEdgeInsets)edgeInsets
                       target:(id)target
                     selector:(SEL)selector;

#pragma mark - Init ImageButton
+ (UIButton *)getImageBtnWithType:(UIButtonType)btnType
                     titleBtnType:(CImageTitleBtnType)imageTitleBtnType
                            title:(NSString *)title
                        imageName:(NSString *)imageName
                        titleFont:(UIFont *)titleFont
                       titleColor:(UIColor *)titleColor;

+ (UIButton *)getImageBtnWithWithType:(UIButtonType)btnType
                         titleBtnType:(CImageTitleBtnType)imageTitleBtnType
                                title:(NSString *)title
                            titleFont:(UIFont *)textFont
                  unSelectedImageName:(NSString *)unSelectedImageName
                    selectedImageName:(NSString *)selectedImageName
                  unSelectedTextColor:(UIColor *)unSelectedColor
                    selectedTextColor:(UIColor *)selectedColor;

@end
