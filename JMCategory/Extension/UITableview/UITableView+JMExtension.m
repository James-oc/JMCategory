//
//  UITableView+JMExtension.m
//  JMCategory
//
//  Created by james on 15/3/27.
//  Copyright (c) 2015年 james. All rights reserved.
//

#import "UITableView+JMExtension.h"

@implementation UITableView (JMExtension)

+ (UITableView *)tableViewWithFrame:(CGRect)frame
                         dataSource:(id)dataSource
                           delegate:(id)delegate {
    return [self tableViewWithFrame:frame
                              style:UITableViewStylePlain
                     separatorStyle:UITableViewCellSeparatorStyleSingleLine
               alwaysBounceVertical:NO
                      scrollEnabled:YES
                    backgroundColor:nil
                         dataSource:dataSource
                           delegate:delegate
             userInteractionEnabled:YES];
}

+ (UITableView *)tableViewWithFrame:(CGRect)frame
                              style:(UITableViewStyle)style
                         dataSource:(id)dataSource
                           delegate:(id)delegate {
    return [self tableViewWithFrame:frame
                              style:style
                     separatorStyle:UITableViewCellSeparatorStyleSingleLine
               alwaysBounceVertical:NO
                      scrollEnabled:YES
                    backgroundColor:nil
                         dataSource:dataSource
                           delegate:delegate
             userInteractionEnabled:YES];
}

+ (UITableView *)tableViewWithFrame:(CGRect)frame
                    backgroundColor:(UIColor *)backgroundColor
                         dataSource:(id)dataSource
                           delegate:(id)delegate {
    return [self tableViewWithFrame:frame
                              style:UITableViewStylePlain
                     separatorStyle:UITableViewCellSeparatorStyleSingleLine
               alwaysBounceVertical:NO
                      scrollEnabled:YES
                    backgroundColor:backgroundColor
                         dataSource:dataSource
                           delegate:delegate
             userInteractionEnabled:YES];
}

+ (UITableView *)tableViewWithFrame:(CGRect)frame
                              style:(UITableViewStyle)style
                    backgroundColor:(UIColor *)backgroundColor
                         dataSource:(id)dataSource
                           delegate:(id)delegate {
    return [self tableViewWithFrame:frame
                              style:style
                     separatorStyle:UITableViewCellSeparatorStyleSingleLine
               alwaysBounceVertical:NO
                      scrollEnabled:YES
                    backgroundColor:backgroundColor
                         dataSource:dataSource
                           delegate:delegate
             userInteractionEnabled:YES];
}

+ (UITableView *)tableViewWithFrame:(CGRect)frame
                              style:(UITableViewStyle)style
                     separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle
               alwaysBounceVertical:(BOOL)alwaysBounceVertical
                      scrollEnabled:(BOOL)scrollEnabled
                    backgroundColor:(UIColor *)backgroundColor
                         dataSource:(id)dataSource
                           delegate:(id)delegate {
    return [self tableViewWithFrame:frame
                              style:style
                     separatorStyle:separatorStyle
               alwaysBounceVertical:alwaysBounceVertical
                      scrollEnabled:scrollEnabled
                    backgroundColor:backgroundColor
                         dataSource:dataSource
                           delegate:delegate
             userInteractionEnabled:YES];
}

+ (UITableView *)tableViewWithFrame:(CGRect)frame
                              style:(UITableViewStyle)style
                     separatorStyle:(UITableViewCellSeparatorStyle)separatorStyle
               alwaysBounceVertical:(BOOL)alwaysBounceVertical
                      scrollEnabled:(BOOL)scrollEnabled
                    backgroundColor:(UIColor *)backgroundColor
                         dataSource:(id)dataSource
                           delegate:(id)delegate
             userInteractionEnabled:(BOOL)userInteractionEnabled {
    UITableView *tableView           = [[UITableView alloc] initWithFrame:frame
                                                                  style:style];
    tableView.separatorStyle         = separatorStyle;
    tableView.alwaysBounceVertical   = alwaysBounceVertical;
    tableView.scrollEnabled          = scrollEnabled;
    tableView.backgroundColor        = backgroundColor;
    tableView.delegate               = delegate;
    tableView.dataSource             = dataSource;
    tableView.userInteractionEnabled = userInteractionEnabled;
    
    return tableView;
}

/**
 *@description 去掉UITableview底部多余的线
 *@return void
 */
- (void)setTableviewExtraCellLineHidden {
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor clearColor];
    
    [self setTableFooterView:view];
}

/**
 *@description 刷新特定的NSIndexPath 所对应的 UITableviewCell
 *@return void
 */
- (void)refreshTableviewCellWithIndexPath:(NSIndexPath *)path {
    [self refreshTableviewCellWithIndexPathArray:[NSMutableArray arrayWithObject:path]];
}


/**
 *@description 刷新特定的NSIndexPath 所对应的 UITableviewCell(可设置动画)
 *@return void
 */
- (void)refreshTableviewCellWithIndexPath:(NSIndexPath *)path
                             rowAnimation:(UITableViewRowAnimation)rowAnimation {
    [self refreshTableviewCellWithIndexPathArray:[NSMutableArray arrayWithObject:path]
                                    rowAnimation:rowAnimation];
}

/**
 *@description 刷新特定的NSIndexPath数组 所对应的 UITableviewCell组
 *@return void
 */
- (void)refreshTableviewCellWithIndexPathArray:(NSMutableArray *)indexPathArray {
     [self reloadRowsAtIndexPaths:indexPathArray
                 withRowAnimation:UITableViewRowAnimationAutomatic];
}

/**
 *@description 刷新特定的NSIndexPath数组 所对应的 UITableviewCell组(可设置动画)
 *@return void
 */
- (void)refreshTableviewCellWithIndexPathArray:(NSMutableArray *)indexPathArray
                                  rowAnimation:(UITableViewRowAnimation)rowAnimation {
    [self reloadRowsAtIndexPaths:indexPathArray
                    withRowAnimation:rowAnimation];
}

@end
