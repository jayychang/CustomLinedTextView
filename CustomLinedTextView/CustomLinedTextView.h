//
//  CustomTextView.h
//  CustomTextViewExample
//
//  Created by jay★ on 2016-09-12.
//  Copyright © 2016 jay★. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomLinedTextView : UITextView

@property (nonatomic) float lineHeight;
@property (nonatomic, strong) UIColor *lineColor;

- (void) setLineSpacing: (float)height;
+ (void) setLineColor: (UIColor*)lineColor;

@end
