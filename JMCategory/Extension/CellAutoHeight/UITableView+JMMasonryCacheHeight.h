//
//  UITableView+JMMasonryCacheHeight.h
//  JMCategory
//
//  Created by shengxiao on 16/4/20.
//  Copyright © 2016年 james. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (JMMasonryCacheHeight)

@property (nonatomic,strong,readonly  ) NSMutableDictionary *jm_cacheCellHeightDict;

@property (nonatomic, strong, readonly) NSMutableDictionary *jm_reuseCells;

@end
