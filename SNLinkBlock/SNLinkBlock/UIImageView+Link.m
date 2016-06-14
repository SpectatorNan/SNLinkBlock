//
//  UIImageView+Link.m
//  SNLinkBlock
//
//  Created by Spectator on 16/5/29.
//  Copyright © 2016年 Spectator. All rights reserved.
//

#import "UIImageView+Link.h"

@implementation UIImageView (Link)


- (UIImageView *(^)(UIImage *))imgV_image {
    
    return ^(UIImage *sn_image) {
        
        self.image = sn_image;
        
        return self;
    };
}


- (UIImageView *(^)(UIColor *))imgV_backgroundColor {
    
    return ^(UIColor *color) {
        
        self.backgroundColor = color;
        
        return self;
    };
}


- (UIImageView *(^)(BOOL))imgV_circle {
    
    return ^(BOOL circle) {
        
        if (circle) {
            [self circleTheView];
        }
        
        return self;
    };
}


- (void)circleTheView {
    
    [self layoutIfNeeded];
    
    CGFloat r = MIN(self.frame.size.width, self.frame.size.height);
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, r, r);
    self.layer.cornerRadius = r / 2;
    self.clipsToBounds = YES;
}
@end
