//
//  UIButton+Link.m
//  SNLinkBlock
//
//  Created by Spectator on 16/5/29.
//  Copyright © 2016年 Spectator. All rights reserved.
//

#import "UIButton+Link.h"

@implementation UIButton (Link)

- (UIButton *(^)(UIImage *, UIControlState))button_image {
    
    return ^(UIImage *image, UIControlState state) {
        
        [self setImage:image forState:state];
        
        return self;
    };
}

- (UIButton *(^)(NSString *, UIControlState))button_title {
    
    return ^(NSString *text, UIControlState state) {
        
        [self setTitle:text forState:state];
        
        return self;
    };
}

- (UIButton *(^)(UIColor *, UIControlState))button_titleColor {
    
    return ^(UIColor *color , UIControlState state) {
        
        [self setTitleColor:color forState:state];
        
        return self;
    };
}

- (UIButton *(^)(UIColor *))button_tintColor {
    
    return ^(UIColor *color) {
        
        [self setTintColor:color];
        
        return self;
    };
}

- (UIButton *(^)(NSAttributedString *, UIControlState))button_attributedTitle {
    
    return ^(NSAttributedString *title, UIControlState state) {
        
        [self setAttributedTitle:title forState:state];
        
        return self;
    };
}

- (UIButton *(^)(UIImage *, UIControlState))button_backgroundIamge {
    
    return ^(UIImage *image, UIControlState state) {
        
        [self setBackgroundImage:image forState:state];
        
        return self;
    };
}

- (UIButton *(^)(NSInteger))button_tag {
    
    return ^(NSInteger tag) {
        
        [self setTag:tag];
        
        return self;
    };
}

- (UIButton *(^)(BOOL))button_adjustsImageWhenDisabled {
    
    return ^(BOOL disabled) {
        
        [self setAdjustsImageWhenDisabled:disabled];
        
        return self;
    };
}

- (UIButton *(^)(UIEdgeInsets))button_imageEdgeInsets {
    
    return ^(UIEdgeInsets insets) {
        
        [self setImageEdgeInsets:insets];
        
        return self;
    };
}

- (UIButton *(^)(UIEdgeInsets))button_titleEdgeInsets {
    
    return ^(UIEdgeInsets insets) {
        
        [self setTitleEdgeInsets:insets];
        
        return self;
    };
}

- (UIButton *(^)(UIEdgeInsets))button_contentEdgeInsets {
    
    return ^(UIEdgeInsets insets) {
        
        [self setContentEdgeInsets:insets];
        
        return self;
    };
}

- (UIButton *(^)(UIColor *))button_backgroundColor {
    
    return ^(UIColor *color) {
        self.backgroundColor = color;
        return self;
    };
}

- (UIButton *(^)(UIFont *))button_titleFont {
    
    return ^(UIFont *fontSize) {
        
        [self.titleLabel setFont:fontSize];
        
        return self;
    };
}

- (UIButton *(^)(CGFloat))button_cornerRadius {
    
    return ^(CGFloat cornerRadius) {
        
        self.layer.cornerRadius = cornerRadius;
        self.clipsToBounds = YES;
        
        return self;
    };
}


- (UIButton *(^)(CGColorRef))lab_borderColor {
    
    return ^(CGColorRef borderColor) {
        
        self.layer.borderColor = borderColor;
        
        return self;
    };
}

- (UIButton *(^)(CGFloat))lab_borderWidth {
    
    return ^(CGFloat borderWidth) {
        
        self.layer.borderWidth = borderWidth;
        
        return self;
    };
}
@end
