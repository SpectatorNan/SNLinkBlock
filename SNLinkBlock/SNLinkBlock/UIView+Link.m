//
//  UIView+Link.m
//  SNLinkBlock
//
//  Created by Spectator on 16/5/29.
//  Copyright © 2016年 Spectator. All rights reserved.
//

#import "UIView+Link.h"

@implementation UIView (Link)

- (UIView *(^)(NSInteger))view_tag{
    return ^(NSInteger tag){
        self.tag = tag;
        return self;
    };
}
- (UIView *(^)(CGRect))view_frame{
    return ^(CGRect frame){
        self.frame = frame;
        return self;
    };
}
- (UIView *(^)(CGRect))view_bounds{
    return ^(CGRect bounds){
        self.bounds = bounds;
        return self;
    };
}
- (UIView *(^)(CGPoint))view_center{
    return ^(CGPoint center){
        self.center = center;
        return self;
    };
}
- (UIView *(^)(UIColor *))view_backgroundColor {
    
    return ^(UIColor *color) {
        
        self.backgroundColor = color;
        
        return self;
    };
}

- (UIView *(^)(BOOL))view_clipsToBounds{
    return ^(BOOL clipsToBounds){
        self.clipsToBounds = clipsToBounds;
        return self;
    };
}

- (UIView *(^)(CGFloat))view_alpha{
    return ^(CGFloat alpha){
        self.alpha = alpha;
        return self;
    };
}

- (UIView *(^)(BOOL))view_opaque{
    return ^(BOOL opaque){
        self.opaque = opaque;
        return self;
    };
}

- (UIView *(^)(BOOL))view_clearsContextBeforeDrawing{
    return ^(BOOL clearsContextBeforeDrawing){
        self.clearsContextBeforeDrawing = clearsContextBeforeDrawing;
        return self;
    };
}

- (UIView *(^)(BOOL))view_hidden{
    return ^(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}

- (UIView *(^)(UIViewContentMode))view_contentMode{
    return ^(UIViewContentMode contentMode){
        self.contentMode = contentMode;
        return self;
    };
}

- (UIView *(^)(UIView *))view_maskView{
    return ^(UIView *maskView){
        self.maskView = maskView;
        return self;
    };
}


- (UIView *(^)(UIColor *))view_tintColor{
    return ^(UIColor *tintColor){
        self.tintColor = tintColor;
        return self;
    };
}


- (UIView *(^)(CGFloat))view_x {
    return ^(CGFloat x){
        CGRect frame = self.frame;
        frame.origin.x = x;
        self.frame = frame;
        return self;
    };
}





- (UIView *(^)(CGFloat))view_y {
    return ^(CGFloat y) {
        CGRect frame = self.frame;
        frame.origin.y = y;
        self.frame = frame;
        return self;
    };
}




- (UIView *(^)(CGFloat))view_width {
    return ^(CGFloat width) {
        CGRect frame = self.frame;
        frame.size.width = width;
        self.frame = frame;
        
        return self;
    };
}



- (UIView *(^)(CGFloat))view_height {
    return ^(CGFloat height) {
        CGRect frame = self.frame;
        frame.size.height = height;
        self.frame = frame;
        return self;
    };
}



#pragma mark -- Frame 属性
- (CGFloat)left {
    return self.frame.origin.x;
}

- (void)setLeft:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)top {
    return self.frame.origin.y;
}

- (void)setTop:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)centerX
{
    return self.left + self.width * 0.5;
}

- (void)setCenterX:(CGFloat)centerX
{
    self.left = centerX - self.width * 0.5;
}

- (CGFloat)centerY
{
    return self.top + self.height * 0.5;
}

- (void)setCenterY:(CGFloat)centerY
{
    self.top = centerY - self.height * 0.5;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {
  
    CGRect frame = self.frame;
    frame.size.width = width;
    
    self.frame = frame;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height {
    
    CGRect frame = self.frame;
    frame.size.height = height;
    
    self.frame = frame;
}

- (CGPoint)origin {
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGSize)size {
    return self.frame.size;
}

- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}



- (void)sn_addSubviews:(NSArray *)views {
 
    [views enumerateObjectsUsingBlock:^(UIView *view, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([view isKindOfClass:[UIView class]] ) {
            [self addSubview:view];
        }
    }];
}
@end
