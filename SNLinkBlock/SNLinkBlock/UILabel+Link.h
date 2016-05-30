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
@property (nonatomic, copy, readonly) UILabel *(^lab_numberOfLines)(NSInteger lines);
/**
 *  设置字体
 */
@property (nonatomic, copy, readonly) UILabel *(^lab_font)(UIFont *font);
/**
 *  设置文本
 */
@property (nonatomic, copy, readonly) UILabel *(^lab_text)(NSString *text);
/**
 *  设置文本颜色
 */
@property (nonatomic, copy, readonly) UILabel *(^lab_textColor)(UIColor *textcolor);
/**
 *  设置对齐
 */
@property (nonatomic, copy, readonly) UILabel *(^lab_textAlignment)(NSTextAlignment textAlignment);
/**
 *  设置背景颜色
 */
@property (nonatomic, copy, readonly) UILabel *(^lab_backgroundColor)(UIColor *backgroundColor);
/**
 *  设置frame
 */
@property (nonatomic, copy, readonly) UILabel *(^lab_frame)(CGRect frame);
/**
 *  设置x
 */
@property (nonatomic, copy, readonly) UILabel *(^lab_x)(CGFloat x);
/**
 *  设置y
 */
@property (nonatomic, copy, readonly) UILabel *(^lab_y)(CGFloat y);
/**
 *  设置width
 */
@property (nonatomic, copy, readonly) UILabel *(^lab_width)(CGFloat width);
/**
 *  设置height
 */
@property (nonatomic, copy, readonly) UILabel *(^lab_height)(CGFloat height);

@end
