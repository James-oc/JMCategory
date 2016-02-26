//
//  NSDictionary+Util.h
//  AtsmartHome
//
//  Created by shengxiao on 15/9/13.
//  Copyright (c) 2015年 Atsmart. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (JMExtension)
/**
 *@description NSData转NSDictionary
 *@return      void
 */
+ (NSDictionary *)dictionaryWithContentsOfData:(NSData *)data;

@end
