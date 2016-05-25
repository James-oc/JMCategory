//
//  UICollectionView+JMExtension.h
//  JMCategory
//
//  Created by shengxiao on 16/4/20.
//  Copyright © 2016年 james. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionView (JMExtension)

+ (UICollectionView *)collectionViewWithFrame:(CGRect)frame
                                       layout:(UICollectionViewLayout *)layout
                                   dataSource:(id)dataSource
                                     delegate:(id)delegate;

+ (UICollectionView *)collectionViewWithFrame:(CGRect)frame
                                       layout:(UICollectionViewLayout *)layout
                              backgroundColor:(UIColor *)backgroundColor
                                   dataSource:(id)dataSource
                                     delegate:(id)delegate;

+ (UICollectionView *)collectionViewWithFrame:(CGRect)frame
                                       layout:(UICollectionViewLayout *)layout
                         alwaysBounceVertical:(BOOL)alwaysBounceVertical
                                scrollEnabled:(BOOL)scrollEnabled
                              backgroundColor:(UIColor *)backgroundColor
                                   dataSource:(id)dataSource
                                     delegate:(id)delegate;

+ (UICollectionView *)collectionViewWithFrame:(CGRect)frame
                                       layout:(UICollectionViewLayout *)layout
                         alwaysBounceVertical:(BOOL)alwaysBounceVertical
                                scrollEnabled:(BOOL)scrollEnabled
                              backgroundColor:(UIColor *)backgroundColor
                                   dataSource:(id)dataSource
                                     delegate:(id)delegate
                       userInteractionEnabled:(BOOL)userInteractionEnabled;

@end
