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


}

@end
