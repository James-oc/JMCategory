//
//  NSString+JMExtension.h
//  JMCategory
//
//  Created by shengxiao on 16/4/23.
//  Copyright © 2016年 james. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (JMExtension)

+ (NSString *)compareCurrentTime:(NSDate*)compareDate;

+ (NSString *)removeTrailZero:(float)number;

@end
