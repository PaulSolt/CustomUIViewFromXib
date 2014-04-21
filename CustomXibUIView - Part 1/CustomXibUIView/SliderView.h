//
//  SliderView.h
//  CustomXibUIView
//
//  Created by Paul on 4/21/14.
//  Copyright (c) 2014 Paul Solt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SliderView : UIView

@property (weak, nonatomic) IBOutlet UILabel *label;

@property (strong, nonatomic) IBOutlet UIView *view;

- (IBAction)switchPressed:(id)sender;
@end
