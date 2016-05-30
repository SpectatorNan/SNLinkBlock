//
//  UILabel+Link.m
//  SNLinkBlock
//
//  Created by Spectator on 16/5/29.
//  Copyright © 2016年 Spectator. All rights reserved.
//

#import "UILabel+Link.h"

@implementation UILabel (Link)


- (UILabel *(^)(NSInteger))lab_numberOfLines {
    
    return ^(NSInteger lines) {
        
        self.numberOfLines = lines;
        
        return self;
    };
}



- (UILabel *(^)(NSString *))lab_text {
    
    return ^(NSString *text) {
        self.text = text;
        return self;
    };
}




- (UILabel *(^)(UIFont *))lab_font {
    
    return ^(UIFont *font) {
        self.font = font;
        return self;
    };
}




- (UILabel *(^)(UIColor *))lab_textColor {
    
    return ^(UIColor *textColor) {
        self.textColor = textColor;
        return self;
    };

}




- (UILabel *(^)(NSTextAlignment))lab_textAlignment {
    
    return ^(NSTextAlignment textAlignment) {
        self.textAlignment = textAlignment;
        return self;
    };
}




- (UILabel *(^)(UIColor *))lab_backgroundColor {
    
    return ^(UIColor *backgroundColor) {
        self.backgroundColor = backgroundColor;
        return self;
    };
}




- (UILabel *(^)(CGRect))lab_frame {
    
    return ^(CGRect frame){
        self.frame = frame;
        
        return self;
    };
}




- (UILabel *(^)(CGFloat))lab_x {
    
    return ^(CGFloat x){
        CGRect frame = self.frame;
        frame.origin.x = x;
        self.frame = frame;
        return self;
    };
}





- (UILabel *(^)(CGFloat))lab_y {
    
    return ^(CGFloat y) {
        CGRect frame = self.frame;
        frame.origin.y = y;
        self.frame = frame;
        return self;
    };
}




- (UILabel *(^)(CGFloat))lab_width {
    
    return ^(CGFloat width) {
        CGRect frame = self.frame;
        frame.size.width = width;
        self.frame = frame;
        
        return self;
    };
}



- (UILabel *(^)(CGFloat))lab_height {
    
    return ^(CGFloat height) {
        CGRect frame = self.frame;
        frame.size.height = height;
        self.frame = frame;
        return self;
    };
}
@end
