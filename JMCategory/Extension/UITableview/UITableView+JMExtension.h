//
//  UITableView+JMExtension.h
//  JMCategory
//
//  Created by james on 15/3/27.
//  Copyright (c) 2015年 james. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (JMExtension)

/**
 *@description 去掉UITableview底部多余的线
 *@return      void
 */
- (void)setTableviewExtraCellLineHidden;

/**
 *@description 刷新特定的NSIndexPath 所对应的 UITableviewCell
 *@return      void
 */
- (void)refreshTableviewCellWithIndexPath:(NSIndexPath *) path;

/**
 *@description 刷新特定的NSIndexPath数组 所对应的 UITableviewCell组
 *@return      void
 */
- (void)refreshTableviewCellWithIndexPathArray:(NSMutableArray *) indexPathArray;

@end
