//
//  UISearchBar+Link.m
//  SNLinkBlock
//
//  Created by Spectator on 16/5/29.
//  Copyright © 2016年 Spectator. All rights reserved.
//

#import "UISearchBar+Link.h"

@implementation UISearchBar (Link)

- (UISearchBar *(^)(UIColor *))searchBar_tintColor {
    
    return ^(UIColor *color) {
        
        self.tintColor = color;
        
        return self;
    };
}

- (UISearchBar *(^)(UIColor *))searchBar_barTintColor {
    
    return ^(UIColor *color) {
        
        self.barTintColor = color;
        
        return self;
    };
}

- (UISearchBar *(^)(UISearchBarStyle))searchBar_searchBarStyle {
    
    return ^(UISearchBarStyle style) {
        
        self.searchBarStyle = style;
        
        return self;
    };
}


- (UISearchBar *(^)(UIBarStyle))searchBar_barStyle {
    
    return ^(UIBarStyle style) {
        
        self.barStyle = style;
    
        return self;
    };
}

- (UISearchBar *(^)(NSString *))searchBar_placeholder {
    
    return ^(NSString *placeholder) {
        
        self.placeholder = placeholder;
        
        return self;
    };
}


- (UISearchBar *(^)(BOOL))searchBar_translucent {
    
    return ^(BOOL translucent) {
        
        self.translucent = translucent;
        
        return self;
    };
}

- (UISearchBar *(^)(BOOL))searchBar_showsScopeBar {
    
    return ^(BOOL showsScopeBar) {
        
        self.showsScopeBar = showsScopeBar;
        
        return self;
    };
}

- (UISearchBar *(^)(id))searchBar_delegate {
    
    
    return ^(id obj) {
        self.delegate = obj;
        
        return self;
    };
}

- (UISearchBar *(^)(NSString *, UIControlState))searchBar_cancelTitle {
    
    return ^(NSString *title, UIControlState state) {
        
        for (id view in self.subviews) {
            
            UIView *cancel = (UIView *)view;
            for (id cc in cancel.subviews) {
                
                if ([cc isKindOfClass:[UIButton class]]) {
                    UIButton *btn = (UIButton*)cc;
                    [btn setTitle:title forState:state];
                }
            }
        }
        
        return self;
        
    };
}

- (UISearchBar *(^)(BOOL))searchBar_showsCancelButton {
    
    return ^(BOOL showsCancelButton) {
        
        self.showsCancelButton = showsCancelButton;
        
        return self;
    };
}



- (UISearchBar *(^)(UIColor *))searchBar_borderColor {
    
    return ^(UIColor *boderColor) {
        
        self.layer.borderColor = boderColor.CGColor;
        
        return self;
    };
}






@end
