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













- (void)sn_addSubviews:(NSArray *)views {
 
    [views enumerateObjectsUsingBlock:^(UIView *view, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([view isKindOfClass:[UIView class]] ) {
            [self addSubview:view];
        }
    }];
}
@end
