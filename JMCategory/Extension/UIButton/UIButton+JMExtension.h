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
/**
 *@description  获取UIButtonTypeCustom样式的UIButton对象
 *@params       rect
 *@params       imageName
 *@params       highlighted
 *@params       target
 *@params       action
 *@return       UIButton
 */
+ (UIButton *)customBtnWithRect:(CGRect)        rect
                  withImageName:(NSString *)    imageName
               highlightedImage:(NSString *)    highlighted
                      addTarget:(id)            target
                         action:(SEL)           action;

/**
 *@description  获取UIButton对象
 *@params       rect
 *@params       btnType
 *@params       titleColor
 *@params       titleFont
 *@params       title
 *@params       lineBreakMode
 *@return       UIButton
 */
+(UIButton *) buttonWithRect:(CGRect)           rect
              withButtonType:(UIButtonType)     btnType
              withTitleColor:(UIColor *)        titleColor
               withTitleFont:(UIFont *)         titleFont
                   withTitle:(NSString *)       title
           withLineBreakMode:(NSLineBreakMode)  lineBreakMode;

/**
 *@description  获取带图片UIButton对象
 *@params       title
 *@params       imageName
 *@params       textFont
 *@params       textColor
 *@params       btnType
 *@params       imageTitleBtnType
 *@return       UIButton
 */
+(UIButton *) getImageBtnWithTitle:(NSString *)         title
                     withImageName:(NSString *)         imageName
                          withFont:(UIFont *)           textFont
                     withTextColor:(UIColor *)          textColor
                       withBtnType:(UIButtonType)       btnType
             withImageTitleBtnType:(CImageTitleBtnType) imageTitleBtnType;

/**
 *@description  获取带图片UIButton对象
 *@params       imageTitleBtnType
 *@params       title
 *@params       unSelectedImageName
 *@params       selectedImageName
 *@params       unSelectedColor
 *@params       selectedColor
 *@params       textFont
 *@params       btnType
 *@return       UIButton
 */
+(UIButton *) getImageBtnWithImageTitleBtnType:(CImageTitleBtnType) imageTitleBtnType
                                         title:(NSString *)         title
                           unSelectedImageName:(NSString *)         unSelectedImageName
                             selectedImageName:(NSString *)         selectedImageName
                           unSelectedTextColor:(UIColor *)          unSelectedColor
                             selectedTextColor:(UIColor *)          selectedColor
                                  withTextFont:(UIFont *)           textFont
                                   withBtnType:(UIButtonType)       btnType;

@end
