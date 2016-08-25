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


- (UILabel *(^)(BOOL))lab_adjustsFontSizeToFitWidth {
    
    return ^(BOOL adjustsFontSizeToFitWidth) {
        
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        
        return self;
    };
}

- (UILabel *(^)(UIColor *))lab_textColor {
    
    return ^(UIColor *textColor) {
        self.textColor = textColor;
        return self;
    };

}


- (UILabel *(^)(NSLineBreakMode))lab_lineBreakMode {
    
    return ^(NSLineBreakMode mode) {
        
        self.lineBreakMode = mode;
        
        return self;
    };
}

- (UILabel *(^)(NSTextAlignment))lab_textAlignment {
    
    return ^(NSTextAlignment textAlignment) {
        self.textAlignment = textAlignment;
        return self;
    };
}

- (UILabel *(^)(UIColor *))lab_shadowColor{
    return ^(UIColor *shadowColor){
        self.shadowColor = shadowColor;
        return self;
    };
}


- (UILabel *(^)(CGSize ))lab_shadowOffset{
    return ^(CGSize shadowOffset){
        self.shadowOffset = shadowOffset;
        return self;
    };
}

- (UILabel *(^)(NSAttributedString *))lab_attributedText{
    return ^(NSAttributedString *attributedText){
        self.attributedText = attributedText;
        return self;
    };
}


- (UILabel *(^)(UIColor *))lab_highlightedTextColor{
    return ^(UIColor *highlightedTextColor){
        self.highlightedTextColor = highlightedTextColor;
        return self;
    };
}

- (UILabel *(^)(BOOL))lab_userInteractionEnabled{
    return ^(BOOL userInteractionEnabled){
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (UILabel *(^)(BOOL))lab_enabled{
    return ^(BOOL enabled){
        self.enabled = enabled;
        return self;
    };
}

- (UILabel *(^)(UIBaselineAdjustment ))lab_baselineAdjustment{
    return ^(UIBaselineAdjustment baselineAdjustment){
        self.baselineAdjustment = baselineAdjustment;
        return self;
    };
}

- (UILabel *(^)(CGFloat))lab_minimumScaleFactor{
    return ^(CGFloat minimumScaleFactor){
        self.minimumScaleFactor = minimumScaleFactor;
        return self;
    };
}
- (UILabel *(^)(BOOL))lab_allowsDefaultTighteningForTruncation{
    return ^(BOOL allowsDefaultTighteningForTruncation){
        self.allowsDefaultTighteningForTruncation = allowsDefaultTighteningForTruncation;
        return self;
    };
}
- (UILabel *(^)(CGFloat))lab_preferredMaxLayoutWidth{
    return ^(CGFloat preferredMaxLayoutWidth){
        self.preferredMaxLayoutWidth = preferredMaxLayoutWidth;
        return self;
    };
}

- (UILabel *(^)(CGFloat))lab_minimumFontSize{
    return ^(CGFloat minimumFontSize){
        self.minimumFontSize = minimumFontSize;
        return self;
    };
}
- (UILabel *(^)(BOOL))lab_adjustsLetterSpacingToFitWidth{
    return ^(BOOL adjustsLetterSpacingToFitWidth){
        self.adjustsLetterSpacingToFitWidth = adjustsLetterSpacingToFitWidth;
        return self;
    };
}

- (UILabel *(^)(CGFloat))lab_cornerRadius {
    
    return ^(CGFloat cornerRadius) {
        
        self.layer.cornerRadius = cornerRadius;
        self.clipsToBounds = YES;
        
        return self;
    };
}

- (UILabel *(^)(CGColorRef))lab_borderColor {
    
    return ^(CGColorRef borderColor) {
        
        self.layer.borderColor = borderColor;
        
        return self;
    };
}

- (UILabel *(^)(CGFloat))lab_borderWidth {
    
    return ^(CGFloat borderWidth) {
        
        self.layer.borderWidth = borderWidth;
        
        return self;
    };
}

- (UILabel *(^)(NSString *, NSString *, UIColor *, NSString *, UIColor *))lab_symbolSplitBeforeAndAfterTheTextColor {
    
    return ^(NSString *symbol,NSString *beforeText,UIColor *beforeColor, NSString *afterText, UIColor *afterColor) {
        
        /*
         
        NSString *aString = [NSString stringWithFormat:@"%@ %@ %@",beforeText,symbol,afterText];
        NSMutableAttributedString *aAttributedString = [[NSMutableAttributedString alloc] initWithString:aString];
        NSRange priceRange = [aString rangeOfString:symbol];
        [aAttributedString addAttribute:NSForegroundColorAttributeName value:beforeColor range:NSMakeRange(0, priceRange.location)];
        [aAttributedString addAttribute:NSForegroundColorAttributeName value:afterColor range:NSMakeRange(priceRange.location, aAttributedString.length-1)];
        
        */
        [self theSymbol:symbol beforeText:beforeText andBeforeColor:beforeColor afterText:afterText andAfterColor:afterColor];
        
        return self;
    };
}


- (void)theSymbol:(NSString *)symbol beforeText:(NSString *)beforeText andBeforeColor:(UIColor *)beforeColor afterText:(NSString *)afterText andAfterColor:(UIColor *)afterColor {
    
    NSString *aString = [NSString stringWithFormat:@"%@ %@ %@",beforeText,symbol,afterText];
    NSMutableAttributedString *aAttributedString = [[NSMutableAttributedString alloc] initWithString:aString];
    NSRange priceRange = [aString rangeOfString:symbol];
    [aAttributedString addAttribute:NSForegroundColorAttributeName value:beforeColor range:NSMakeRange(0, priceRange.location-1)];
    [aAttributedString addAttribute:NSForegroundColorAttributeName value:afterColor range:NSMakeRange(priceRange.location, aString.length-priceRange.location)];
    
    self.attributedText = aAttributedString;
}
@end
