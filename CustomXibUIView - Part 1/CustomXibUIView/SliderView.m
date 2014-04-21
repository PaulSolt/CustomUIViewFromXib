//
//  SliderView.m
//  CustomXibUIView
//
//  Created by Paul on 4/21/14.
//  Copyright (c) 2014 Paul Solt. All rights reserved.
//

#import "SliderView.h"

@implementation SliderView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if(self) {
        
        // 1. Load the interface file from .xib
        [[NSBundle mainBundle] loadNibNamed:@"SliderView" owner:self options:nil];
        
        
        // 2. Add as a subview
        
        [self addSubview:self.view];
        
        
    }
    return self;
}


- (IBAction)switchPressed:(id)sender {
}
@end
