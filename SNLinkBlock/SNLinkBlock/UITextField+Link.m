//
//  UITextField+Link.m
//  SNLinkBlock
//
//  Created by Spectator on 16/5/29.
//  Copyright © 2016年 Spectator. All rights reserved.
//

#import "UITextField+Link.h"

@implementation UITextField (Link)

- (UITextField *(^)(id))tf_delegate {
    
    return ^(id target) {
        
        self.delegate = target;
        
        return self;
    };
}


- (UITextField *(^)(UITextBorderStyle))tf_borderStyle {
    
    return ^(UITextBorderStyle borderStyle) {
        
        self.borderStyle = borderStyle;
        
        return self;
    };
}

- (UITextField *(^)(NSString *))tf_placeholder {
    
    return ^(NSString *placeholder) {
        
        self.placeholder = placeholder;
        
        return self;
    };
}

- (UITextField *(^)(UIColor *))tf_backgroundColor {
    
    return ^(UIColor *backgroundColor) {
        
        self.backgroundColor = backgroundColor;
        
        return self;
    };
}

- (UITextField *(^)(UIView *))tf_rightView {
    
    return ^(UIView *rightView ) {
        
        self.rightView = rightView;
        
        return self;
    };
}

- (UITextField *(^)(UIView *))tf_leftView {
    
    return ^(UIView *leftView) {
        
        self.leftView = leftView;
        
        return self;
    };
}

- (UITextField *(^)(UITextFieldViewMode))tf_leftViewMode {
    
    return ^(UITextFieldViewMode leftViewMode) {
        
        self.leftViewMode = leftViewMode;
        
        return self;
    };
}

- (UITextField *(^)(UITextFieldViewMode))tf_rightViewMode {
    
    return ^(UITextFieldViewMode rightViewMode) {
        
        self.rightViewMode = rightViewMode;
        
        return self;
    };
}

- (UITextField *(^)(UIControlContentVerticalAlignment))tf_contentVerticalAlignment {
    
    return ^(UIControlContentVerticalAlignment contentVerticalAlignment) {
        
        self.contentVerticalAlignment = contentVerticalAlignment;
        
        return self;
    };
}

- (UITextField *(^)(CGFloat))tf_alpha {
    
    return ^(CGFloat alpha) {
        
        self.alpha = alpha;
        
        return self;
    };
}

- (UITextField *(^)(BOOL))tf_secureTextEntry {
    
    return ^(BOOL secureTextEntry) {
        
        self.secureTextEntry = secureTextEntry;
        
        return self;
    };
}

- (UITextField *(^)(UIFont *))tf_font {
    
    return ^(UIFont *fontSize) {
        
        self.font = fontSize;
        return self;
    };
}
@end
