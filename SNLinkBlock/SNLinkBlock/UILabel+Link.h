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
 *  设置 字体是否自适应View
 */
@property (nonatomic, copy, readonly) UILabel *(^lab_adjustsFontSizeToFitWidth)(BOOL adjustsFontSizeToFitWidth);
/**
 *  设置文本
 */
@property (nonatomic, copy, readonly) UILabel *(^lab_text)(NSString *text);
/**
 *  设置文本颜色
 */
@property (nonatomic, copy, readonly) UILabel *(^lab_textColor)(UIColor *textcolor);
/**
 *  设置 多余文本的截断方式
 */
@property (nonatomic, copy, readonly) UILabel *(^lab_lineBreakMode)(NSLineBreakMode mode);
/**
 *  设置对齐
 */
@property (nonatomic, copy, readonly) UILabel *(^lab_textAlignment)(NSTextAlignment textAlignment);

@property (nonatomic, copy, readonly) UILabel *(^lab_cornerRadius)(CGFloat cornerRadius);

@property (nonatomic, copy, readonly) UILabel *(^lab_borderColor)(CGColorRef borderColor);

@property (nonatomic, copy, readonly) UILabel *(^lab_borderWidth)(CGFloat borderWidth);

@property (nonatomic, copy, readonly) UILabel *(^lab_shadowColor)(UIColor *shadowColor);

@property (nonatomic, copy, readonly) UILabel *(^lab_shadowOffset)(CGSize shadowOffset);

@property (nonatomic, copy, readonly) UILabel *(^lab_attributedText)(NSAttributedString *attributedText);

@property (nonatomic, copy, readonly) UILabel *(^lab_highlightedTextColor)(UIColor *highlightedTextColor);

@property (nonatomic, copy, readonly) UILabel *(^lab_userInteractionEnabled)(BOOL userInteractionEnabled);

@property (nonatomic, copy, readonly) UILabel *(^lab_enabled)(BOOL enabled);

@property (nonatomic, copy, readonly) UILabel *(^lab_baselineAdjustment)(UIBaselineAdjustment baselineAdjustment);

@property (nonatomic, copy, readonly) UILabel *(^lab_minimumScaleFactor)(CGFloat minimumScaleFactor);
@property (nonatomic, copy, readonly) UILabel *(^lab_allowsDefaultTighteningForTruncation)(BOOL allowsDefaultTighteningForTruncation);

@property (nonatomic, copy, readonly) UILabel *(^lab_preferredMaxLayoutWidth)(CGFloat preferredMaxLayoutWidth);

@property (nonatomic, copy, readonly) UILabel *(^lab_minimumFontSize)(CGFloat minimumFontSize)NS_DEPRECATED_IOS(2_0, 6_0) __TVOS_PROHIBITED;

@property (nonatomic, copy, readonly) UILabel *(^lab_adjustsLetterSpacingToFitWidth)(BOOL adjustsLetterSpacingToFitWidth) NS_DEPRECATED_IOS(6_0,7_0) __TVOS_PROHIBITED;


@property (nonatomic, copy, readonly) UILabel *(^lab_symbolSplitBeforeAndAfterTheTextColor)(NSString *symbol,NSString *beforeText,UIColor *beforeColor, NSString *afterText, UIColor *afterColor);

@end
