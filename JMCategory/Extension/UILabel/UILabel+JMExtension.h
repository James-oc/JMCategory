//
//  UILabel+JMExtension.h
//  JMCategory
//
//  Created by james on 15/4/1.
//  Copyright (c) 2015年 james. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (JMExtension)

+(UILabel *) labelWithRect:(CGRect) rect
                  withFont:(float) fontSize
             withTextColor:(NSString *) textColor;

+(UILabel *) labelWithRect:(CGRect) rect
                  withFont:(float) fontSize
             withTextColor:(NSString *) textColor
       withBackgroundColor:(NSString *)bgColor;

+(UILabel *) labelWithFrame:(CGRect) frame withTextColor:(UIColor *) textColor withFont:(UIFont *) font withText:(NSString *) text withTextAlignment:(NSTextAlignment) textAlignment;

@end
