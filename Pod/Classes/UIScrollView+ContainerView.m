//
//  UIScrollView+ContainerView.m
//  ScrollViewCategories
//
//  Created by Peter Stuart on 4/20/15.
//  Copyright (c) 2015 Peter Stuart. All rights reserved.
//

#import "UIScrollView+ContainerView.h"

@implementation UIScrollView (ContainerView)

- (UIView *)containerViewForVerticalScrolling {
    UIView *view = [self containerViewWithEqualAttribute:NSLayoutAttributeWidth];
    
    return view;
}

- (UIView *)containerViewForHorizontalScrolling {
    UIView *view = [self containerViewWithEqualAttribute:NSLayoutAttributeHeight];
    
    return view;
}

- (UIView *)containerViewWithEqualAttribute:(NSLayoutAttribute)attribute {
    UIView *view = [UIView new];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:view];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:view attribute:attribute relatedBy:NSLayoutRelationEqual toItem:self attribute:attribute multiplier:1 constant:0]];
    NSDictionary *views = NSDictionaryOfVariableBindings(view);
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|[view]|" options:0 metrics:nil views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:nil views:views]];
    
    return view;
}

@end
