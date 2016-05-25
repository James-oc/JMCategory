//
//  NSDate+JMExtension.m
//  JMCategory
//
//  Created by shengxiao on 16/4/23.
//  Copyright © 2016年 james. All rights reserved.
//

#import "NSDate+JMExtension.h"

@implementation NSDate (JMExtension)

NSString * const DateTypeIdentifier(JMDateFormatType type) {
    switch (type) {
        case JM_DF_MM_DD:
            return @"MM-dd";
            break;
        case JM_DF_YYYY_MM:
            return @"yyyy-MM";
            break;
        case JM_DF_YYYY_MM_DD:
            return @"yyyy-MM-dd";
            break;
        case JM_DF_MM_DD_HH_MM:
            return @"MM-dd HH:mm";
            break;
        case JM_DF_MM_DD_HH_MM_SS:
            return @"MM-dd HH:mm:ss";
            break;
        case JM_DF_YYYY_MM_DD_HH_MM:
            return @"yyyy-MM-dd HH:mm";
            break;
        case JM_DF_YYYY_MM_DD_HH_MM_SS:
            return @"yyyy-MM-dd HH:mm:ss";
            break;
            
        case JM_DF_MM_DD_EN:
            return @"MM/dd";
            break;
        case JM_DF_YYYY_MM_EN:
            return @"yyyy/MM";
            break;
        case JM_DF_YYYY_MM_DD_EN:
            return @"yyyy/MM/dd";
            break;
        case JM_DF_MM_DD_HH_MM_EN:
            return @"MM/dd HH:mm";
            break;
        case JM_DF_MM_DD_HH_MM_SS_EN:
            return @"MM/dd HH:mm:ss";
            break;
        case JM_DF_YYYY_MM_DD_HH_MM_EN:
            return @"yyyy/MM/dd HH:mm";
            break;
        case JM_DF_YYYY_MM_DD_HH_MM_SS_EN:
            return @"yyyy/MM/dd HH:mm:ss";
            break;

        case JM_DF_MM_DD_CN:
            return @"MM月dd日";
            break;
        case JM_DF_YYYY_MM_CN:
            return @"yyyy年MM月";
            break;
        case JM_DF_YYYY_MM_DD_CN:
            return @"yyyy年MM月dd日";
            break;
        case JM_DF_MM_DD_HH_MM_CN:
            return @"MM月dd日 HH:mm";
            break;
        case JM_DF_MM_DD_HH_MM_SS_CN:
            return @"MM月dd日 HH:mm:ss";
            break;
        case JM_DF_YYYY_MM_DD_HH_MM_CN:
            return @"yyyy年MM月dd日 HH:mm";
            break;
        case JM_DF_YYYY_MM_DD_HH_MM_SS_CN:
            return @"yyyy年MM月dd日 HH:mm:ss";
            break;

        case JM_DF_HH_MM_SS:
            return @"HH:mm:ss";
            break;
        case JM_DF_HH_MM:
            return @"HH:mm";
            break;
        case JM_DF_HH:
            return @"HH";
            break;
        default:
            break;
    }
}

/**
 *  字符串转时间
 *
 *  @param dateString 时间字符串
 *  @param formatType 格式类型
 *
 *  @return NSDate
 */
+ (NSDate *)dateFromString:(NSString *)dateString
                formatType:(JMDateFormatType)formatType {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:DateTypeIdentifier(formatType)];

    return [dateFormatter dateFromString:dateString];
}

/**
 *  时间转字符串
 *
 *  @param formatType 格式类型
 *
 *  @return 时间字符串
 */
- (NSString *)toDateString:(JMDateFormatType)formatType {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:DateTypeIdentifier(formatType)];
    
    return [dateFormatter stringFromDate:self];
}

@end
