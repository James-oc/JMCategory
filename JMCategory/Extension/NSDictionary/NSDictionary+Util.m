//
//  NSDictionary+Util.m
//  AtsmartHome
//
//  Created by shengxiao on 15/9/13.
//  Copyright (c) 2015年 Atsmart. All rights reserved.
//

#import "NSDictionary+Util.h"

@implementation NSDictionary (Util)

+ (NSDictionary *)dictionaryWithContentsOfData:(NSData *)data {
    CFPropertyListRef list = CFPropertyListCreateFromXMLData(kCFAllocatorDefault, (__bridge CFDataRef)data, kCFPropertyListImmutable, NULL);
    if(list == nil) return nil;
    if ([(__bridge id)list isKindOfClass:[NSDictionary class]]) {
        return (__bridge NSDictionary *)list;
    }
    else {
        CFRelease(list);
        return nil;
    }
}

@end
