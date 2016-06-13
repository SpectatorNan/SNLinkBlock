//
//  UITextField+Link.h
//  SNLinkBlock
//
//  Created by Spectator on 16/5/29.
//  Copyright © 2016年 Spectator. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (Link)


@property (nonatomic, copy, readonly) UITextField *(^tf_placeholder)(NSString *placeholder);

@property (nonatomic, copy, readonly) UITextField *(^tf_delegate)(id target);

@property (nonatomic, copy, readonly) UITextField *(^tf_borderStyle)(UITextBorderStyle borderStyle);

@property (nonatomic, copy, readonly) UITextField *(^tf_backgroundColor)(UIColor *backgroundColor);

@property (nonatomic, copy, readonly) UITextField *(^tf_rightView)(UIView *rightView);

@property (nonatomic, copy, readonly) UITextField *(^tf_leftView)(UIView *leftView);

@property (nonatomic, copy, readonly) UITextField *(^tf_leftViewMode)(UITextFieldViewMode leftViewMode);

@property (nonatomic, copy, readonly) UITextField *(^tf_rightViewMode)(UITextFieldViewMode rightViewMode);

@property (nonatomic, copy, readonly) UITextField *(^tf_contentVerticalAlignment)(UIControlContentVerticalAlignment contentVerticalAlignment);

@property (nonatomic, copy, readonly) UITextField *(^tf_alpha)(CGFloat alpha);

@property (nonatomic, copy, readonly) UITextField *(^tf_secureTextEntry)(BOOL secureTextEntry);

@end
