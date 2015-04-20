//
//  UIScrollView+ContainerView.h
//  ScrollViewCategories
//
//  Created by Peter Stuart on 4/20/15.
//  Copyright (c) 2015 Peter Stuart. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (ContainerView)

/// Adds a container view as a subview of the scroll view, and sets up constraints to ensure the scroll view will only scroll vertically.
- (UIView *)containerViewForVerticalScrolling;

/// Adds a container view as a subview of the scroll view, and sets up constraints to ensure the scroll view will only scroll horizontally.
- (UIView *)containerViewForHorizontalScrolling;

@end
