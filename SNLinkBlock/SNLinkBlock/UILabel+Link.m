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
- (void)setLabNumberOfLines:(UILabel *(^)(NSInteger))labNumberOfLines {}




- (UILabel *(^)(NSString *))labText {
    
    return ^(NSString *text) {
        self.text = text;
        return self;
    };
}
- (void)setLabText:(UILabel *(^)(NSString *))labText {};




- (UILabel *(^)(UIFont *))labFont {
    
    return ^(UIFont *font) {
        self.font = font;
        return self;
    };
}
- (void)setLabFont:(UILabel *(^)(UIFont *))LabFont {}




- (UILabel *(^)(UIColor *))labTextColor {
    
    return ^(UIColor *textColor) {
        self.textColor = textColor;
        return self;
    };

}
- (void)setLabTextColor:(UILabel *(^)(UIColor *))labTextColor {}




- (UILabel *(^)(NSTextAlignment))labTextAlignment {
    
    return ^(NSTextAlignment textAlignment) {
        self.textAlignment = textAlignment;
        return self;
    };
}
- (void)setLabTextAlignment:(UILabel *(^)(NSTextAlignment))labTextAlignment {}




- (UILabel *(^)(UIColor *))labBackgroundColor {
    
    return ^(UIColor *backgroundColor) {
        self.backgroundColor = backgroundColor;
        return self;
    };
}
- (void)setLabBackgroundColor:(UILabel *(^)(UIColor *))labBackgroundColor {}




- (UILabel *(^)(CGRect))labFrame {
    
    return ^(CGRect frame){
        self.frame = frame;
        
        return self;
    };
}
- (void)setLabFrame:(UILabel *(^)(CGRect))labFrame {}




- (UILabel *(^)(CGFloat))labX {
    
    return ^(CGFloat x){
        CGRect frame = self.frame;
        frame.origin.x = x;
        self.frame = frame;
        return self;
    };
}
- (void)setLabX:(UILabel *(^)(CGFloat))labX {}





- (UILabel *(^)(CGFloat))labY {
    
    return ^(CGFloat y) {
        return self;
    };
}
- (void)setLabY:(UILabel *(^)(CGFloat))labY {}




- (UILabel *(^)(CGFloat))labWidth {
    
    return ^(CGFloat width) {
        return self;
    };
}
- (void)setLabWidth:(UILabel *(^)(CGFloat))labWidth {}




- (UILabel *(^)(CGFloat))labHeight {
    
    return ^(CGFloat height) {
        return self;
    };
}
- (void)setLabHeight:(UILabel *(^)(CGFloat))labHeight {}
@end
