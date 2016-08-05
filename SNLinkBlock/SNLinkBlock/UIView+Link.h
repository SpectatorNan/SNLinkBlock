//
//  UIView+Link.h
//  SNLinkBlock
//
//  Created by Spectator on 16/5/29.
//  Copyright © 2016年 Spectator. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Link)
/**
 *  设置frame
 */
@property (nonatomic, copy, readonly) UIView *(^view_frame)(CGRect frame);

@property (nonatomic, copy, readonly) UIView *(^view_bounds)(CGRect bounds);

@property (nonatomic, copy, readonly) UIView *(^view_center)(CGPoint center);

@property (nonatomic, copy, readonly) UIView *(^view_backgroundColor)(UIColor *color);

@property (nonatomic, copy, readonly) UIView *(^view_tag)(NSInteger tag);

@property (nonatomic, copy, readonly) UIView *(^view_clipsToBounds)(BOOL clipsToBounds);

@property (nonatomic, copy, readonly) UIView *(^view_alpha)(CGFloat alpha);

@property (nonatomic, copy, readonly) UIView *(^view_opaque)(BOOL opaque);

@property (nonatomic, copy, readonly) UIView *(^view_clearsContextBeforeDrawing)(BOOL clearsContextBeforeDrawing);

@property (nonatomic, copy, readonly) UIView *(^view_hidden)(BOOL hidden);

@property (nonatomic, copy, readonly) UIView *(^view_contentMode)(UIViewContentMode contentMode);

@property (nonatomic, copy, readonly) UIView *(^view_maskView)(UIView *maskView);

@property (nonatomic, copy, readonly) UIView *(^view_tintColor)(UIColor *tintColor);


/**
 *  设置x
 */
@property (nonatomic, copy, readonly) UIView *(^view_x)(CGFloat x);
/**
 *  设置y
 */
@property (nonatomic, copy, readonly) UIView *(^view_y)(CGFloat y);
/**
 *  设置width
 */
@property (nonatomic, copy, readonly) UIView *(^view_width)(CGFloat width);
/**
 *  设置height
 */
@property (nonatomic, copy, readonly) UIView *(^view_height)(CGFloat height);


@property (nonatomic) CGFloat left;
@property (nonatomic) CGFloat top;
@property (nonatomic) CGFloat right;
@property (nonatomic) CGFloat bottom;
@property (nonatomic) CGFloat centerX;
@property (nonatomic) CGFloat centerY;

@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;


@property (nonatomic) CGPoint origin;
@property (nonatomic) CGSize size;




/**
 *  同时添加多个子视图
 *
 */
- (void)sn_addSubviews:(NSArray *)views;
@end
