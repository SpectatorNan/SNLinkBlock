//
//  UITextView+Link.h
//  SNLinkBlock
//
//  Created by Spectator on 16/5/29.
//  Copyright © 2016年 Spectator. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (Link)

@property (nonatomic, copy, readonly) UITextView *(^textV_cornerRadius)(CGFloat cornerRadius);

@property (nonatomic, copy, readonly) UITextView *(^textV_borderColor)(UIColor *borderColor);

@property (nonatomic, copy, readonly) UITextView *(^textV_borderWidth)(CGFloat  borderWidth);
@end
