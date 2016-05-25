//
//  NSDate+JMExtension.h
//  JMCategory
//
//  Created by shengxiao on 16/4/23.
//  Copyright © 2016年 james. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,JMDateFormatType) {
    JM_DF_MM_DD,                    // MM-dd
    JM_DF_YYYY_MM,                  // yyyy-MM
    JM_DF_YYYY_MM_DD,               // yyyy-MM-dd
    JM_DF_MM_DD_HH_MM,              // MM-dd HH:mm
    JM_DF_MM_DD_HH_MM_SS,           // MM-dd HH:mm:ss
    JM_DF_YYYY_MM_DD_HH_MM,         // yyyy-MM-dd HH:mm
    JM_DF_YYYY_MM_DD_HH_MM_SS,      // yyyy-MM-dd HH:mm:ss
    
    JM_DF_MM_DD_EN,                 // MM/dd
    JM_DF_YYYY_MM_EN,               // yyyy/MM
    JM_DF_YYYY_MM_DD_EN,            // yyyy/MM/dd
    JM_DF_MM_DD_HH_MM_EN,           // MM/dd HH:mm
    JM_DF_MM_DD_HH_MM_SS_EN,        // MM/dd HH:mm:ss
    JM_DF_YYYY_MM_DD_HH_MM_EN,      // yyyy/MM/dd HH:mm
    JM_DF_YYYY_MM_DD_HH_MM_SS_EN,   // yyyy/MM/dd HH:mm:ss
    
    JM_DF_MM_DD_CN,                 // MM月dd日
    JM_DF_YYYY_MM_CN,               // yyyy年MM月
    JM_DF_YYYY_MM_DD_CN,            // yyyy年MM月dd日
    JM_DF_MM_DD_HH_MM_CN,           // MM月dd日 HH:mm
    JM_DF_MM_DD_HH_MM_SS_CN,        // MM月dd日 HH:mm:ss
    JM_DF_YYYY_MM_DD_HH_MM_CN,      // yyyy年MM月dd日 HH:mm
    JM_DF_YYYY_MM_DD_HH_MM_SS_CN,   // yyyy年MM月dd日 HH:mm:ss
    
    JM_DF_HH_MM_SS,                 // HH:mm:ss
    JM_DF_HH_MM,                    // HH:mm
    JM_DF_HH,                       // HH
};

FOUNDATION_EXTERN NSString *const DateTypeIdentifier(JMDateFormatType type);

@interface NSDate (JMExtension)

/**
 *  字符串转时间
 *
 *  @param dateString 时间字符串
 *  @param formatType 格式类型
 *
 *  @return NSDate
 */
+ (NSDate *)dateFromString:(NSString *)dateString
                formatType:(JMDateFormatType)formatType;

/**
 *  时间转字符串
 *
 *  @param formatType 格式类型
 *
 *  @return 时间字符串
 */
- (NSString *)toDateString:(JMDateFormatType)formatType;

@end
