//
//  UIImageView+JMExtension.m
//  JMCategory
//
//  Created by shengxiao on 16/4/19.
//  Copyright © 2016年 james. All rights reserved.
//

#import "UIImageView+JMExtension.h"

@implementation UIImageView (JMExtension)

+ (UIImageView *)imageViewWithFrame:(CGRect)frame {
    return [self imageViewWithFrame:frame
                              image:nil
                        contentMode:UIViewContentModeScaleToFill
                    backgroundColor:[UIColor clearColor]
             userInteractionEnabled:NO];
}

+ (UIImageView *)imageViewWithFrame:(CGRect)frame
                    backgroundColor:(UIColor *)backgroundColor {
    return [self imageViewWithFrame:frame
                              image:nil
                        contentMode:UIViewContentModeScaleToFill
                    backgroundColor:backgroundColor
             userInteractionEnabled:NO];
}

+ (UIImageView *)imageViewWithFrame:(CGRect)frame
                    backgroundColor:(UIColor *)backgroundColor
             userInteractionEnabled:(BOOL)enabled {
    return [self imageViewWithFrame:frame
                              image:nil
                        contentMode:UIViewContentModeScaleToFill
                    backgroundColor:backgroundColor
             userInteractionEnabled:enabled];
}

+ (UIImageView *)imageViewWithFrame:(CGRect)frame
                        contentMode:(UIViewContentMode)contentMode {
    return [self imageViewWithFrame:frame
                              image:nil
                        contentMode:contentMode
                    backgroundColor:[UIColor clearColor]
             userInteractionEnabled:NO];
}

+ (UIImageView *)imageViewWithFrame:(CGRect)frame
                        contentMode:(UIViewContentMode)contentMode
                    backgroundColor:(UIColor *)backgroundColor {
    return [self imageViewWithFrame:frame
                              image:nil
                        contentMode:contentMode
                    backgroundColor:backgroundColor
             userInteractionEnabled:NO];
}

+ (UIImageView *)imageViewWithFrame:(CGRect)frame
                        contentMode:(UIViewContentMode)contentMode
                    backgroundColor:(UIColor *)backgroundColor
        userInteractionEnabled:(BOOL)enabled {
    return [self imageViewWithFrame:frame
                              image:nil
                        contentMode:contentMode
                    backgroundColor:backgroundColor
             userInteractionEnabled:enabled];
}

+ (UIImageView *)imageViewWithFrame:(CGRect)frame
                              image:(UIImage *)image
                        contentMode:(UIViewContentMode)contentMode {
    return [self imageViewWithFrame:frame
                              image:image
                        contentMode:contentMode
                    backgroundColor:[UIColor clearColor]
             userInteractionEnabled:NO];
}

+ (UIImageView *)imageViewWithFrame:(CGRect)frame
                              image:(UIImage *)image
                        contentMode:(UIViewContentMode)contentMode
             userInteractionEnabled:(BOOL)enabled {
    return [self imageViewWithFrame:frame
                              image:image
                        contentMode:contentMode
                    backgroundColor:[UIColor clearColor]
             userInteractionEnabled:enabled];
}

+ (UIImageView *)imageViewWithFrame:(CGRect)frame
                         image:(UIImage *)image
               backgroundColor:(UIColor *)backgroundColor {
    return [self imageViewWithFrame:frame
                         image:image
                   contentMode:UIViewContentModeScaleToFill
               backgroundColor:backgroundColor
        userInteractionEnabled:NO];
}

+ (UIImageView *)imageViewWithFrame:(CGRect)frame
                         image:(UIImage *)image
               backgroundColor:(UIColor *)backgroundColor
        userInteractionEnabled:(BOOL)enabled {
    return [self imageViewWithFrame:frame
                         image:image
                   contentMode:UIViewContentModeScaleToFill
               backgroundColor:backgroundColor
        userInteractionEnabled:enabled];
}

+ (UIImageView *)imageViewWithFrame:(CGRect)frame
                         image:(UIImage *)image
                   contentMode:(UIViewContentMode)contentMode
               backgroundColor:(UIColor *)backgroundColor {
    return [self imageViewWithFrame:frame
                         image:image
                   contentMode:contentMode
               backgroundColor:backgroundColor
        userInteractionEnabled:NO];
}

+ (UIImageView *)imageViewWithFrame:(CGRect)frame
                         image:(UIImage *)image
                   contentMode:(UIViewContentMode)contentMode
               backgroundColor:(UIColor *)backgroundColor
        userInteractionEnabled:(BOOL)enabled {
    UIImageView *imageView           = [[UIImageView alloc] initWithFrame:frame];
    imageView.userInteractionEnabled = enabled;
    imageView.contentMode            = contentMode;
    if (image != nil) {
        imageView.image              = image;
    }
    
    if (backgroundColor != nil) {
        imageView.backgroundColor    = backgroundColor;
    }
    
    return imageView;
}

@end
