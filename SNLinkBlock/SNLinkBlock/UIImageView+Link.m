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
- (UIImageView *(^)(UIImage *))imgV_highlightedImage{
    return ^(UIImage *highlightedImage) {
        
        self.highlightedImage = highlightedImage;
        
        return self;
    };
}
@end
