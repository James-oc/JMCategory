//
//  UITableViewCell+JMMasonryAutoCellHeight.m
//  JMCategory
//
//  Created by shengxiao on 16/4/20.
//  Copyright © 2016年 james. All rights reserved.
//

#import "UITableViewCell+JMMasonryAutoCellHeight.h"
#import <objc/runtime.h>
#import "UITableView+JMMasonryCacheHeight.h"

NSString *const kJMCacheUniqueKey         = @"kJMCacheUniqueKey";
NSString *const kJMCacheStateKey          = @"kJMCacheStateKey";
NSString *const kJMRecalculateForStateKey = @"kJMRecalculateForStateKey";

const void *s_jm_lastViewInCellKey        = "jm_lastViewInCellKey";
const void *s_jm_bottomOffsetToCellKey    = "jm_bottomOffsetToCellKey";

@implementation UITableViewCell (JMMasonryAutoCellHeight)

#pragma mark - Public
/**
 * 通过此方法来计算行高，需要在config中调用配置数据的API
 *
 * @param tableView 必传，为哪个tableView缓存行高
 * @param config     必须要实现，且需要调用配置数据的API
 *
 * @return 计算的行高
 */
+ (CGFloat)jm_heightForTableView:(UITableView *)tableView
                          config:(JMCellBlock)config {
    UITableViewCell *cell = [tableView.jm_reuseCells objectForKey:[[self class] description]];
    
    if (cell == nil) {
        cell = [[self alloc] initWithStyle:UITableViewCellStyleDefault
                           reuseIdentifier:nil];
        [tableView.jm_reuseCells setObject:cell forKey:[[self class] description]];
    }
    
    if (config) {
        config(cell);
    }
    
    return [cell jm_heightForTableView:tableView];
}

/**
 *	此API会缓存行高
 *
 *	@param tableView 必传，为哪个tableView缓存行高
 *	@param config 必须要实现，且需要调用配置数据的API
 *	@param cache  返回相关key
 *
 *	@return 行高
 */
+ (CGFloat)jm_heightForTableView:(UITableView *)tableView
                           config:(JMCellBlock)config
                            cache:(JMCacheHeight)cache {
    if (cache) {
        NSDictionary *cacheKeys        = cache();
        NSString *key                  = cacheKeys[kJMCacheUniqueKey];
        NSString *stateKey             = cacheKeys[kJMCacheStateKey];
        NSString *shouldUpdate         = cacheKeys[kJMRecalculateForStateKey];

        NSMutableDictionary *stateDict = tableView.jm_cacheCellHeightDict[key];
        NSString *cacheHeight          = stateDict[stateKey];

        if (tableView == nil
            || tableView.jm_cacheCellHeightDict.count == 0
            || shouldUpdate.boolValue
            || cacheHeight == nil) {
            CGFloat height = [self jm_heightForTableView:tableView config:config];
            
            if (stateDict == nil) {
                stateDict = [[NSMutableDictionary alloc] init];
                tableView.jm_cacheCellHeightDict[key] = stateDict;
            }
            
            [stateDict setObject:[NSString stringWithFormat:@"%lf", height] forKey:stateKey];
            
            return height;
        } else if (tableView.jm_cacheCellHeightDict.count != 0
                   && cacheHeight != nil
                   && cacheHeight.integerValue != 0) {
            return cacheHeight.floatValue;
        }
    }
    
    return [self jm_heightForTableView:tableView config:config];
}

#pragma mark - Properties
- (void)setJm_lastViewInCell:(UIView *)jm_lastViewInCell {
    objc_setAssociatedObject(self,
                             s_jm_lastViewInCellKey,
                             jm_lastViewInCell,
                             OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIView *)jm_lastViewInCell {
    return objc_getAssociatedObject(self, s_jm_lastViewInCellKey);
}

- (void)setJm_bottomOffsetToCell:(CGFloat)jm_bottomOffsetToCell {
    objc_setAssociatedObject(self,
                             s_jm_bottomOffsetToCellKey,
                             @(jm_bottomOffsetToCell),
                             OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGFloat)jm_bottomOffsetToCell {
    NSNumber *valueObject = objc_getAssociatedObject(self, s_jm_bottomOffsetToCellKey);
    
    if ([valueObject respondsToSelector:@selector(floatValue)]) {
        return valueObject.floatValue;
    }
    
    return 0.0;
}

#pragma mark - Private
- (CGFloat)jm_heightForTableView:(UITableView *)tableView {
     NSAssert(self.jm_lastViewInCell != nil, @"您未指定cell排列中最后一个视图对象，无法计算cell的高度");
    [self layoutIfNeeded];
    
    CGFloat rowHeight = self.jm_lastViewInCell.frame.size.height + self.jm_lastViewInCell.frame.origin.y;
    rowHeight        += self.jm_bottomOffsetToCell;
    
    return rowHeight;
}

@end
