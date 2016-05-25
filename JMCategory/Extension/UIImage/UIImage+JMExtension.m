//
//  UIImage+JMExtension.m
//  JMCategory
//
//  Created by shengxiao on 16/4/22.
//  Copyright © 2016年 james. All rights reserved.
//

#import "UIImage+JMExtension.h"

@implementation UIImage (JMExtension)

+ (UIImage *)getAlwaysOriginImage:(UIImage *)image {
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

@end
