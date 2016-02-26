//
//  CALayer+Layout.h
//  Hopscotch
//
//  Created by Charles Qiu on 15/5/30.
//  Copyright (c) 2015年 Suryani. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface CALayer (Layout)

@property (assign, nonatomic) CGFloat frameX;
@property (assign, nonatomic) CGFloat frameY;
@property (assign, nonatomic) CGFloat frameWidth;
@property (assign, nonatomic) CGFloat frameHeight;
@property (assign, nonatomic) CGFloat centerX;
@property (assign, nonatomic) CGFloat centerY;
@property (assign, nonatomic) CGSize  frameSize;

@property (assign, nonatomic) CGFloat top;
@property (assign, nonatomic) CGFloat bottom;
@property (assign, nonatomic) CGFloat right;
@property (assign, nonatomic) CGFloat left;

@end
