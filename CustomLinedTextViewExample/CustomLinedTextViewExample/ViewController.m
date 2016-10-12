//
//  ViewController.m
//  CustomLinedTextViewExample
//
//  Created by jay★ on 2016-09-12.
//  Copyright © 2016 jay★. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Find the height of statusBar and navigationBar if exist
    float statusBarHeight = [[UIApplication sharedApplication] statusBarFrame].size.height + self.navigationController.navigationBar.frame.size.height;
    
    self.textView = [[CustomLinedTextView alloc] initWithFrame:CGRectMake(0, statusBarHeight, self.view.frame.size.width, self.view.frame.size.height - statusBarHeight)];
    self.textView.autoresizingMask = (UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth);
    
    // Below are optional values you can set, otherwise revert to default
    self.textView.alwaysBounceVertical = YES;
    [self.textView setTextContainerInset:UIEdgeInsetsMake(20.0f, 10.0f, 0, 10.0f)];
    [self.textView setFont:[UIFont fontWithName:@"Times New Roman" size:30]];
    [self.textView setTextColor:[UIColor blueColor]];
    [self.textView setLineSpacing:20];
    [self.textView setLineColor:[UIColor redColor]];
    [self.textView setBackgroundColor:[UIColor colorWithRed:247.0/255.0 green:251.0/255.0 blue:251.0/255.0 alpha:1.0]];
    
    self.textView.text = @"";
    [self.view addSubview:self.textView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
