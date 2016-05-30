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
 *  设置背景颜色
 */
@property (nonatomic, copy, readonly) UIView *(^view_backgroundColor)(UIColor *color);


/**
 *  同时添加多个子视图
 *
 */
- (void)sn_addSubviews:(NSArray *)views;
@end
