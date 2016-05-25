//
//  UICollectionView+JMExtension.m
//  JMCategory
//
//  Created by shengxiao on 16/4/20.
//  Copyright © 2016年 james. All rights reserved.
//

#import "UICollectionView+JMExtension.h"

@implementation UICollectionView (JMExtension)

+ (UICollectionView *)collectionViewWithFrame:(CGRect)frame
                                       layout:(UICollectionViewLayout *)layout
                                   dataSource:(id)dataSource
                                     delegate:(id)delegate {
    return [self collectionViewWithFrame:frame
                                  layout:layout
                    alwaysBounceVertical:NO
                           scrollEnabled:YES
                         backgroundColor:nil
                              dataSource:dataSource
                                delegate:delegate
                  userInteractionEnabled:YES];
}

+ (UICollectionView *)collectionViewWithFrame:(CGRect)frame
                                       layout:(UICollectionViewLayout *)layout
                              backgroundColor:(UIColor *)backgroundColor
                                   dataSource:(id)dataSource
                                     delegate:(id)delegate {
    return [self collectionViewWithFrame:frame
                                  layout:layout
                    alwaysBounceVertical:NO
                           scrollEnabled:YES
                         backgroundColor:backgroundColor
                              dataSource:dataSource
                                delegate:delegate
                  userInteractionEnabled:YES];
}

+ (UICollectionView *)collectionViewWithFrame:(CGRect)frame
                                       layout:(UICollectionViewLayout *)layout
                         alwaysBounceVertical:(BOOL)alwaysBounceVertical
                                scrollEnabled:(BOOL)scrollEnabled
                              backgroundColor:(UIColor *)backgroundColor
                                   dataSource:(id)dataSource
                                     delegate:(id)delegate {
    return [self collectionViewWithFrame:frame
                                  layout:layout
                    alwaysBounceVertical:alwaysBounceVertical
                           scrollEnabled:scrollEnabled
                         backgroundColor:backgroundColor
                              dataSource:dataSource
                                delegate:delegate
                  userInteractionEnabled:YES];
}


+ (UICollectionView *)collectionViewWithFrame:(CGRect)frame
                                       layout:(UICollectionViewLayout *)layout
                         alwaysBounceVertical:(BOOL)alwaysBounceVertical
                                scrollEnabled:(BOOL)scrollEnabled
                              backgroundColor:(UIColor *)backgroundColor
                                   dataSource:(id)dataSource
                                     delegate:(id)delegate
                       userInteractionEnabled:(BOOL)userInteractionEnabled {
    UICollectionView  *collectionView     = [[UICollectionView alloc] initWithFrame:frame

                                                           collectionViewLayout:layout];
    collectionView.alwaysBounceVertical   = alwaysBounceVertical;
    collectionView.scrollEnabled          = scrollEnabled;
    collectionView.backgroundColor        = backgroundColor;
    collectionView.delegate               = delegate;
    collectionView.dataSource             = dataSource;
    collectionView.userInteractionEnabled = userInteractionEnabled;
    
    return collectionView;
}

@end
