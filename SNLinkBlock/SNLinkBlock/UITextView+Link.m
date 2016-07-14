//
//  UITextView+Link.m
//  SNLinkBlock
//
//  Created by Spectator on 16/5/29.
//  Copyright © 2016年 Spectator. All rights reserved.
//

#import "UITextView+Link.h"

@implementation UITextView (Link)


- (UITextView *(^)(CGFloat))textV_cornerRadius {
    
    return ^(CGFloat cornerRadius) {
        
        self.layer.cornerRadius = cornerRadius;
        self.clipsToBounds = YES;
        
        return self;
    };
}


- (UITextView *(^)(UIColor *))textV_borderColor {
    return ^(UIColor *borderColor) {
        
        self.layer.borderColor = borderColor.CGColor;
        
        return self;
    };
}

- (UITextView *(^)(CGFloat))textV_borderWidth {
    
    return ^(CGFloat borderWidth) {
        
        self.layer.borderWidth = borderWidth;
        
        return self;
    };
}
@end
