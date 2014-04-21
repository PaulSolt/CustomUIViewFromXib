//
//  ViewController.m
//  CustomXibUIView
//
//  Created by Paul on 4/21/14.
//  Copyright (c) 2014 Paul Solt. All rights reserved.
//

#import "ViewController.h"
#import "SliderView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];


    SliderView *sliderView = [[SliderView alloc] init];
    sliderView.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:sliderView];

    sliderView.center = CGPointMake(100, 300);

    // Turn off autosizing masks
    sliderView.translatesAutoresizingMaskIntoConstraints = NO;
    
    // 1. Pin to bottom
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:sliderView
                                                          attribute:NSLayoutAttributeBottom
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeBottom
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    
    // 2. Pin to center x
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:sliderView
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    
}

@end
