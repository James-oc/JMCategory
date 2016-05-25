//
//  UITableViewCell+JMMasonryAutoCellHeight.h
//  JMCategory
//
//  Created by shengxiao on 16/4/20.
//  Copyright © 2016年 james. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 * 获取高度前会回调，需要在此BLOCK中配置数据，才能正确地获取高度
 */
typedef void(^JMCellBlock)(UITableViewCell *sourceCell);

typedef NSDictionary *(^JMCacheHeight)();

@interface UITableViewCell (JMMasonryAutoCellHeight)

FOUNDATION_EXTERN NSString *const kJMCacheUniqueKey;         // 唯一键

FOUNDATION_EXTERN NSString *const kJMCacheStateKey;          // 不同状态高度不一样

FOUNDATION_EXTERN NSString *const kJMRecalculateForStateKey; // 用于指定更新某种状态的缓存，比如当评论时，增加了一条评论，此时该状态的高度若已经缓存过，则需要指定来更新缓存

@property (nonatomic, strong) UIView *jm_lastViewInCell;     // 默认为nil，如果在计算时，值为nil，会crash

@property (nonatomic, assign) CGFloat jm_bottomOffsetToCell; // 可选设置的属性，默认为0，表示指定的jm_lastViewInCell到cell的bottom的距离,默认为0.0

/**
 * 通过此方法来计算行高，需要在config中调用配置数据的API
 *
 * @param tableView 必传，为哪个tableView缓存行高
 * @param config     必须要实现，且需要调用配置数据的API
 *
 * @return 计算的行高
 */
+ (CGFloat)jm_heightForTableView:(UITableView *)tableView
                          config:(JMCellBlock)config;

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
                            cache:(JMCacheHeight)cache;

@end
