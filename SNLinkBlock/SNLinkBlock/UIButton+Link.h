//
//  UIButton+Link.h
//  SNLinkBlock
//
//  Created by Spectator on 16/5/29.
//  Copyright © 2016年 Spectator. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Link)
/**
 *  设置 image
 */
@property (nonatomic, copy, readonly) UIButton *(^button_image)(UIImage *image, UIControlState state);
/**
 *  设置 title
 */
@property (nonatomic, copy, readonly) UIButton *(^button_title)(NSString *text, UIControlState state);
/**
 *  设置 titleColor
 */
@property (nonatomic, copy, readonly) UIButton *(^button_titleColor)(UIColor *color, UIControlState state);
/**
 *  设置 tintColor
 */
@property (nonatomic, copy, readonly) UIButton *(^button_tintColor)(UIColor *color);
/**
 *  设置 attributedTitle
 */
@property (nonatomic, copy, readonly) UIButton *(^button_attributedTitle)(NSAttributedString *title, UIControlState state);
/**
 *  设置 backgroundImage
 */
@property (nonatomic, copy, readonly) UIButton *(^button_backgroundIamge)(UIImage *image, UIControlState state);
/**
 *  设置 tag
 */
@property (nonatomic, copy, readonly) UIButton *(^button_tag)(NSInteger tag);

/**
 *  设置 adjustsIamgeWhenDisabled
 */
@property (nonatomic, copy, readonly) UIButton *(^button_adjustsImageWhenDisabled)(BOOL disable);
/**
 *  设置 iamgeEdgeInsets
 */
@property (nonatomic, copy, readonly) UIButton *(^button_imageEdgeInsets)(UIEdgeInsets insets);
/**
 *  设置 titleEdgeInsets
 */
@property (nonatomic, copy, readonly) UIButton *(^button_titleEdgeInsets)(UIEdgeInsets insets);
/**
 *  设置 contentEdgeInsets
 */
@property (nonatomic, copy, readonly) UIButton *(^button_contentEdgeInsets)(UIEdgeInsets insets);

@end
