//
//  UILabel+Link.m
//  SNLinkBlock
//
//  Created by Spectator on 16/5/29.
//  Copyright © 2016年 Spectator. All rights reserved.
//

#import "UILabel+Link.h"

@implementation UILabel (Link)


- (UILabel *(^)(NSInteger))labNumberOfLines {
    
    return ^(NSInteger lines) {
        
        self.numberOfLines = lines;
        
        return self;
    };
}



- (UILabel *(^)(NSString *))labText {
    
    return ^(NSString *text) {
        self.text = text;
        return self;
    };
}




- (UILabel *(^)(UIFont *))labFont {
    
    return ^(UIFont *font) {
        self.font = font;
        return self;
    };
}




- (UILabel *(^)(UIColor *))labTextColor {
    
    return ^(UIColor *textColor) {
        self.textColor = textColor;
        return self;
    };

}




- (UILabel *(^)(NSTextAlignment))labTextAlignment {
    
    return ^(NSTextAlignment textAlignment) {
        self.textAlignment = textAlignment;
        return self;
    };
}




- (UILabel *(^)(UIColor *))labBackgroundColor {
    
    return ^(UIColor *backgroundColor) {
        self.backgroundColor = backgroundColor;
        return self;
    };
}




- (UILabel *(^)(CGRect))labFrame {
    
    return ^(CGRect frame){
        self.frame = frame;
        
        return self;
    };
}




- (UILabel *(^)(CGFloat))labX {
    
    return ^(CGFloat x){
        CGRect frame = self.frame;
        frame.origin.x = x;
        self.frame = frame;
        return self;
    };
}





- (UILabel *(^)(CGFloat))labY {
    
    return ^(CGFloat y) {
        CGRect frame = self.frame;
        frame.origin.y = y;
        self.frame = frame;
        return self;
    };
}




- (UILabel *(^)(CGFloat))labWidth {
    
    return ^(CGFloat width) {
        CGRect frame = self.frame;
        frame.size.width = width;
        self.frame = frame;
        
        return self;
    };
}




- (UILabel *(^)(CGFloat))labHeight {
    
    return ^(CGFloat height) {
        CGRect frame = self.frame;
        frame.size.height = height;
        self.frame = frame;
        return self;
    };
}
@end
