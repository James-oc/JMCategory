//
//  UITableView+JMExtension.h
//  JMCategory
//
//  Created by james on 15/3/27.
//  Copyright (c) 2015年 james. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (JMExtension)

+ (UITableView *)tableViewWithFrame:(CGRect)frame
                         dataSource:(id)dataSource
                           delegate:(id)delegate;

+ (UITableView *)tableViewWithFrame:(CGRect)frame
                              style:(UITableViewStyle)style
                         dataSource:(id)dataSource
                           delegate:(id)delegate;

+ (UITableView *)tableViewWithFrame:(CGRect)frame
                    backgroundColor:(UIColor *)backgroundColor
                         dataSource:(id)dataSource
                           delegate:(id)delegate;

+ (UITableView *)tableViewWithFrame:(CGRect)frame
                              style:(UITableViewStyle)style
                    backgroundColor:(UIColor *)backgroundColor
                         dataSource:(id)dataSource
                           delegate:(id)delegate;

+ (UITableView *)tableViewWithFrame:(CGRect)frame
                              style:(UITableViewStyle)style
                     separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle
               alwaysBounceVertical:(BOOL)alwaysBounceVertical
                      scrollEnabled:(BOOL)scrollEnabled
                    backgroundColor:(UIColor *)backgroundColor
                         dataSource:(id)dataSource
                           delegate:(id)delegate;

+ (UITableView *)tableViewWithFrame:(CGRect)frame
                              style:(UITableViewStyle)style
                     separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle
               alwaysBounceVertical:(BOOL)alwaysBounceVertical
                      scrollEnabled:(BOOL)scrollEnabled
                    backgroundColor:(UIColor *)backgroundColor
                         dataSource:(id)dataSource
                           delegate:(id)delegate
             userInteractionEnabled:(BOOL)userInteractionEnabled;

/**
 *@description 去掉UITableview底部多余的线
 *@return void
 */
- (void)setTableviewExtraCellLineHidden;

/**
 *@description 刷新特定的NSIndexPath 所对应的 UITableviewCell
 *@return void
 */
- (void)refreshTableviewCellWithIndexPath:(NSIndexPath *) path;

/**
 *@description 刷新特定的NSIndexPath 所对应的 UITableviewCell(可设置动画)
 *@return void
 */
- (void)refreshTableviewCellWithIndexPath:(NSIndexPath *)path
                             rowAnimation:(UITableViewRowAnimation)rowAnimation;

/**
 *@description 刷新特定的NSIndexPath数组 所对应的 UITableviewCell组
 *@return void
 */
- (void)refreshTableviewCellWithIndexPathArray:(NSMutableArray *)indexPathArray;

/**
 *@description 刷新特定的NSIndexPath数组 所对应的 UITableviewCell组(可设置动画)
 *@return void
 */
- (void)refreshTableviewCellWithIndexPathArray:(NSMutableArray *)indexPathArray
                              rowAnimation:(UITableViewRowAnimation)rowAnimation;

@end
