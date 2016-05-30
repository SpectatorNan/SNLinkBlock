//
//  UIImageView+Link.h
//  SNLinkBlock
//
//  Created by Spectator on 16/5/29.
//  Copyright © 2016年 Spectator. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (Link)
/**
 *  设置 backgroundColor
 */
@property (nonatomic, copy, readonly) UIImageView *(^imgV_backgroundColor)(UIColor *color);
/**
 *  设置 image
 */
@property (nonatomic, copy, readonly) UIImageView *(^imgV_image)(UIImage *image);

@end
