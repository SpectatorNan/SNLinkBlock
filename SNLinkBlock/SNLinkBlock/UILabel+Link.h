//
//  UILabel+Link.h
//  SNLinkBlock
//
//  Created by Spectator on 16/5/29.
//  Copyright © 2016年 Spectator. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Link)
/**
 *  设置行数
 */
@property (nonatomic, copy, readonly) UILabel *(^labNumberOfLines)(NSInteger lines);
/**
 *  设置字体
 */
@property (nonatomic, copy, readonly) UILabel *(^labFont)(UIFont *font);
/**
 *  设置文本
 */
@property (nonatomic, copy, readonly) UILabel *(^labText)(NSString *text);
/**
 *  设置文本颜色
 */
@property (nonatomic, copy, readonly) UILabel *(^labTextColor)(UIColor *textcolor);
/**
 *  设置对齐
 */
@property (nonatomic, copy, readonly) UILabel *(^labTextAlignment)(NSTextAlignment textAlignment);
/**
 *  设置背景颜色
 */
@property (nonatomic, copy, readonly) UILabel *(^labBackgroundColor)(UIColor *backgroundColor);
/**
 *  设置frame
 */
@property (nonatomic, copy, readonly) UILabel *(^labFrame)(CGRect frame);
/**
 *  设置x
 */
@property (nonatomic, copy, readonly) UILabel *(^labX)(CGFloat x);
/**
 *  设置y
 */
@property (nonatomic, copy, readonly) UILabel *(^labY)(CGFloat y);
/**
 *  设置width
 */
@property (nonatomic, copy, readonly) UILabel *(^labWidth)(CGFloat width);
/**
 *  设置height
 */
@property (nonatomic, copy, readonly) UILabel *(^labHeight)(CGFloat height);

@end
