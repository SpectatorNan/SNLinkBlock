//
//  UIView+Link.m
//  SNLinkBlock
//
//  Created by Spectator on 16/5/29.
//  Copyright © 2016年 Spectator. All rights reserved.
//

#import "UIView+Link.h"

@implementation UIView (Link)

- (UIView *(^)(UIColor *))view_backgroundColor {
    
    return ^(UIColor *color) {
        
        self.backgroundColor = color;
        
        return self;
    };
}

@end
