//
//  UITableView+JMMasonryCacheHeight.m
//  JMCategory
//
//  Created by shengxiao on 16/4/20.
//  Copyright © 2016年 james. All rights reserved.
//

#import "UITableView+JMMasonryCacheHeight.h"
#import <objc/runtime.h>

static const void *__jm_tableview_cacheCellHeightKey = "__jm_tableview_cacheCellHeightKey";
static const void *__jm_tableview_reuse_cells_key = "__jm_tableview_reuse_cells_key";

@implementation UITableView (JMMasonryCacheHeight)

- (NSMutableDictionary *)jm_cacheCellHeightDict {
    NSMutableDictionary *dict = objc_getAssociatedObject(self, __jm_tableview_cacheCellHeightKey);
    
    if (dict == nil) {
        dict = [[NSMutableDictionary alloc] init];
        
        objc_setAssociatedObject(self,
                                 __jm_tableview_cacheCellHeightKey,
                                 dict,
                                 OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    return dict;
}

- (NSMutableDictionary *)jm_reuseCells {
    NSMutableDictionary *cells = objc_getAssociatedObject(self, __jm_tableview_reuse_cells_key);
    
    if (cells == nil) {
        cells = [[NSMutableDictionary alloc] init];
        
        objc_setAssociatedObject(self,
                                 __jm_tableview_reuse_cells_key,
                                 cells,
                                 OBJC_ASSOCIATION_RETAIN);
    }
    
    return cells;
}

@end
