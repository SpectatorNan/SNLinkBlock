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
@property (nonatomic, copy) UILabel *(^labNumberOfLines)(NSInteger lines);
/**
 *  设置字体
 */
@property (nonatomic, copy) UILabel *(^labFont)(UIFont *font);
/**
 *  设置文本
 */
@property (nonatomic, copy) UILabel *(^labText)(NSString *text);
/**
 *  设置文本颜色
 */
@property (nonatomic, copy) UILabel *(^labTextColor)(UIColor *textcolor);
/**
 *  设置对齐
 */
@property (nonatomic, copy) UILabel *(^labTextAlignment)(NSTextAlignment textAlignment);
/**
 *  设置背景颜色
 */
@property (nonatomic, copy) UILabel *(^labBackgroundColor)(UIColor *backgroundColor);
/**
 *  设置frame
 */
@property (nonatomic, copy) UILabel *(^labFrame)(CGRect frame);
/**
 *  设置x
 */
@property (nonatomic, copy) UILabel *(^labX)(CGFloat x);
/**
 *  设置y
 */
@property (nonatomic, copy) UILabel *(^labY)(CGFloat y);
/**
 *  设置width
 */
@property (nonatomic, copy) UILabel *(^labWidth)(CGFloat width);
/**
 *  设置height
 */
@property (nonatomic, copy) UILabel *(^labHeight)(CGFloat height);

@end
