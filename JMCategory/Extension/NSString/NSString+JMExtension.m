//
//  NSString+JMExtension.m
//  JMCategory
//
//  Created by shengxiao on 16/4/23.
//  Copyright © 2016年 james. All rights reserved.
//

#import "NSString+JMExtension.h"

@implementation NSString (JMExtension)

+ (NSString *)compareCurrentTime:(NSDate*)compareDate {
    NSTimeInterval  timeInterval = [compareDate timeIntervalSinceNow];
    timeInterval                 = -timeInterval;
    
    int temp = 0;
    NSString *result;
    
    if (timeInterval < 60) {
       result = NSLocalizedString(@"Just now", nil);
    }else if((temp = timeInterval/60) <60) {
        result = [NSString stringWithFormat:@"%d%@",temp,(temp > 1) ? NSLocalizedString(@"mins", nil) : NSLocalizedString(@"min", nil)];
    }else if((temp = temp/60) <24) {
        result = [NSString stringWithFormat:@"%d%@",temp,(temp > 1) ? NSLocalizedString(@"hours", nil) : NSLocalizedString(@"hour", nil)];
    }else if((temp = temp/24) <30) {
        result = [NSString stringWithFormat:@"%d%@",temp,(temp > 1) ? NSLocalizedString(@"days", nil) : NSLocalizedString(@"day", nil)];
    }else if((temp = temp/30) <12) {
        result = [NSString stringWithFormat:@"%d%@",temp,(temp > 1) ? NSLocalizedString(@"months", nil) : NSLocalizedString(@"month", nil)];
    }else {
        temp = temp/12;
        result = [NSString stringWithFormat:@"%d%@",temp,(temp > 1) ? NSLocalizedString(@"years", nil) : NSLocalizedString(@"year", nil)];
    }
       
    return  result;
}

+ (NSString *)removeTrailZero:(float)number {
    NSString *numberStr    = [NSString stringWithFormat:@"%f",number];
    NSString *subStr = nil;
    NSInteger offset       = numberStr.length - 1;
    
    while (offset) {
        subStr = [numberStr substringWithRange:NSMakeRange(offset, 1)];
        if ([subStr isEqualToString:@"0"] || [subStr isEqualToString:@"."])
        {
            offset--;
        }else {
            break;
        }
    }
    
    return [numberStr substringToIndex:offset+1];
}

@end
