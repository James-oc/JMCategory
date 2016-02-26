//
//  UILabel+JMExtension.h
//  JMCategory
//
//  Created by james on 15/4/1.
//  Copyright (c) 2015年 james. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (JMExtension)
/**
 *@description  获取UILabel对象
 *@params       rect
 *@params       fontSize
 *@params       textColor
 *@return       UILabel
 */
+ (UILabel *)labelWithRect:(CGRect)     rect
                  withFont:(float)      fontSize
             withTextColor:(NSString *) textColor;

/**
 *@description  获取UILabel对象
 *@params       rect
 *@params       fontSize
 *@params       textColor
 *@params       bgColor
 *@return       UILabel
 */
+ (UILabel *)labelWithRect:(CGRect)     rect
                  withFont:(float)      fontSize
             withTextColor:(NSString *) textColor
       withBackgroundColor:(NSString *) bgColor;

/**
 *@description  获取UILabel对象
 *@params       rect
 *@params       textColor
 *@params       font
 *@params       text
 *@params       textAlignment
 *@return       UILabel
 */
+ (UILabel *)labelWithRect:(CGRect)             rect
             withTextColor:(UIColor *)          textColor
                  withFont:(UIFont *)           font
                  withText:(NSString *)         text
         withTextAlignment:(NSTextAlignment)    textAlignment;

@end
