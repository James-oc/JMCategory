//
//  UITableView+JMExtension.m
//  JMCategory
//
//  Created by james on 15/3/27.
//  Copyright (c) 2015年 james. All rights reserved.
//

#import "UITableView+JMExtension.h"

@implementation UITableView (JMExtension)
/**
 *@description 去掉UITableview底部多余的线
 *@return void
 */
-(void) setTableviewExtraCellLineHidden {
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor clearColor];
    
    [self setTableFooterView:view];
}

/**
 *@description 刷新特定的NSIndexPath 所对应的 UITableviewCell
 *@return void
 */
-(void) refreshTableviewCellWithIndexPath:(NSIndexPath *) path {
    [self refreshTableviewCellWithIndexPathArray:[NSMutableArray arrayWithObject:path]];
}

/**
 *@description 刷新特定的NSIndexPath数组 所对应的 UITableviewCell组
 *@return void
 */
-(void) refreshTableviewCellWithIndexPathArray:(NSMutableArray *) indexPathArray {
     [self reloadRowsAtIndexPaths:indexPathArray withRowAnimation:UITableViewRowAnimationAutomatic];
}
@end
