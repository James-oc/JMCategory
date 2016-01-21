//
//  UILabel+JMExtension.m
//  JMCategory
//
//  Created by james on 15/4/1.
//  Copyright (c) 2015年 james. All rights reserved.
//

#import "UILabel+JMExtension.h"
#import "UIColor+JMExtension.h"

@implementation UILabel (JMExtension)

+(UILabel *) labelWithRect:(CGRect) rect
                  withFont:(float) fontSize
             withTextColor:(NSString *) textColor {
    UILabel *label = [[UILabel alloc] initWithFrame:rect];
    label.font = [UIFont systemFontOfSize:fontSize];
    label.textColor = [UIColor colorWithHexString:textColor];
    label.backgroundColor = [UIColor clearColor];
    
    return label;
}

+(UILabel *) labelWithRect:(CGRect) rect
                  withFont:(float) fontSize
             withTextColor:(NSString *) textColor
       withBackgroundColor:(NSString *)bgColor {
    UILabel *label = [self labelWithRect:rect
                                withFont:fontSize
                           withTextColor:textColor];
    label.backgroundColor = [UIColor colorWithHexString:bgColor];
    
    return label;
}

+(UILabel *) labelWithFrame:(CGRect) frame withTextColor:(UIColor *) textColor withFont:(UIFont *) font withText:(NSString *) text withTextAlignment:(NSTextAlignment) textAlignment {
    UILabel *label      = [[UILabel alloc] initWithFrame:frame];
    label.textColor     = textColor;
    label.font          = font;
    label.textAlignment = textAlignment;
    label.text          = text;
    
    return label;
}

@end
