//
//  CustomTextView.m
//  CustomTextViewExample
//
//  Created by jay★ on 2016-09-12.
//  Copyright © 2016 jay★. All rights reserved.
//

#import "CustomLinedTextView.h"

@implementation CustomLinedTextView

+ (void) initialize {
    if (self == [CustomLinedTextView class]) {
        id appearance = [self appearance];
        [appearance setContentMode:UIViewContentModeRedraw];
    }
}

#pragma mark - Superclass overrides

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    return self;
}

- (void)drawRect:(CGRect)rect {
    UIScreen *screen = self.window.screen ?: [UIScreen mainScreen];
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGFloat lineThickness = 1.0f / screen.scale;
    CGContextSetLineWidth(context, lineThickness);
    
    if (self.lineColor) {
        CGContextBeginPath(context);
        CGContextSetStrokeColorWithColor(context, self.lineColor.CGColor);
        
        CGFloat topOffset = self.textContainerInset.top;
        // Use bottom instead if want text directly on the drawn line
//        CGFloat topOffset = self.textContainerInset.top + self.font.descender;
        
        CGFloat screenScale = [UIScreen mainScreen].scale;
        CGFloat X = self.bounds.origin.x + self.textContainerInset.left;
        CGFloat lineWidth = self.bounds.size.width - self.textContainerInset.right;
        
        NSInteger firstVisibleLine = MAX(1, (self.contentOffset.y / (self.font.lineHeight + self.lineHeight)));
        NSInteger lastVisibleLine = ceilf((self.contentOffset.y + self.bounds.size.height) / (self.font.lineHeight+ self.lineHeight));
        for (NSInteger line = firstVisibleLine; line <= lastVisibleLine; line++) {
            CGFloat Y = (topOffset + ((self.font.lineHeight + self.lineHeight) * line));
            
            CGFloat roundedY = roundf(Y * screenScale) / screenScale;
            CGContextMoveToPoint(context, X, (roundedY - (self.lineHeight / 2) ));
            CGContextAddLineToPoint(context, lineWidth, (roundedY - (self.lineHeight / 2)));
        }
        CGContextClosePath(context);
        CGContextStrokePath(context);
    }
}

- (void)setFont:(UIFont *)font {
    [super setFont: font];
    [self setNeedsDisplay];
}

- (void)setTextColor:(UIColor *)textColor {
    [super setTextColor:textColor];
    [self setNeedsDisplay];
}

- (CGRect)caretRectForPosition:(UITextPosition *)position {
    CGRect originalRect = [super caretRectForPosition:position];
    self.tintColor = self.textColor;
    originalRect.size.height = self.font.pointSize - self.font.descender;
    return originalRect;
}

- (void)setTextContainerInset:(UIEdgeInsets)textContainerInset {
    [super setTextContainerInset:textContainerInset];
    [self setNeedsDisplay];
}

- (void) setLineSpacing: (float)height {
    self.lineHeight = height;
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    UIFont* font = [UIFont alloc];
    if (self.font) {
        font = self.font;
    } else {
        font = [UIFont fontWithName:@".SFUIText" size:15]; // Set Default value
    }
    UIColor* color = [UIColor alloc];
    if (self.textColor) {
        color = self.textColor;
    } else {
        color = [UIColor blackColor]; // Set Default Value
    }
    style.lineSpacing = self.lineHeight;
    self.attributedText = [[NSAttributedString alloc]
                           initWithString:@"Placeholder"
                           attributes:@{NSParagraphStyleAttributeName : style,
                                        NSFontAttributeName:font,
                                        NSForegroundColorAttributeName:color}];
    [self setNeedsDisplay];
}

+ (void) setLineColor: (UIColor *)color {
    self.lineColor = color;
}

@end
