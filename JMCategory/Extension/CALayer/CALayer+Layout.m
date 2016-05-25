//
//  CALayer+Layout.m
//  Hopscotch
//
//  Created by Charles Qiu on 15/5/30.
//  Copyright (c) 2015年 Suryani. All rights reserved.
//

#import "CALayer+Layout.h"

@implementation CALayer (Layout)

- (CGFloat)frameX
{
    return self.frame.origin.x;
}

- (void)setFrameX:(CGFloat)x
{
    CGRect localFrame = self.frame;
    localFrame.origin.x = x;
    
    self.frame = localFrame;
}

- (CGFloat)frameY
{
    return self.frame.origin.y;
}

- (void)setFrameY:(CGFloat)y
{
    CGRect localFrame = self.frame;
    localFrame.origin.y = y;
    
    self.frame = localFrame;
}

- (CGFloat)frameWidth
{
    return self.frame.size.width;
}

- (void)setFrameWidth:(CGFloat)width
{
    CGRect localFrame = self.frame;
    localFrame.size.width = width;
    
    self.frame = localFrame;
}

- (CGFloat)frameHeight
{
    return self.frame.size.height;
}

- (void)setFrameHeight:(CGFloat)height
{
    CGRect localFrame = self.frame;
    localFrame.size.height = height;
    
    self.frame = localFrame;
}

- (CGFloat)centerX
{
    return self.frame.size.width / 2;
}

- (void)setCenterX:(CGFloat)centerX
{
    CGPoint localPoint = self.anchorPoint;
    localPoint.x = centerX;
    
    self.anchorPoint = localPoint;
}

- (CGFloat)centerY
{
    return self.frame.size.height / 2;
}

- (void)setCenterY:(CGFloat)centerY
{
    CGPoint localPoint = self.anchorPoint;
    localPoint.y = centerY;
    
    self.anchorPoint = localPoint;
}

- (CGSize)frameSize
{
    return self.frame.size;
}

- (void)setFrameSize:(CGSize)frameSize
{
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y,
                            frameSize.width, frameSize.height);
}

- (CGFloat)top
{
    return self.frame.origin.y;
}

- (void)setTop:(CGFloat)top
{
    self.frame = CGRectMake(self.frame.origin.x, top,
                            self.frame.size.width, self.frame.size.height);
}

- (CGFloat)bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setBottom:(CGFloat)bottom
{
    self.frame = CGRectMake(self.frame.origin.x, bottom - self.frame.size.height,
                            self.frame.size.width, self.frame.size.height);
}

- (CGFloat)left
{
    return self.frame.origin.x;
}

- (void)setLeft:(CGFloat)left
{
    self.frame = CGRectMake(left, self.frame.origin.y,
                            self.frame.size.width, self.frame.size.height);
}

- (CGFloat)right
{
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setRight:(CGFloat)right
{
    self.frame = CGRectMake(right - self.frame.size.width, self.frame.origin.y,
                            self.frame.size.width, self.frame.size.height);
}

@end
