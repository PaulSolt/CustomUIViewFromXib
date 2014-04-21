//
//  SliderView.m
//  CustomXibUIView
//
//  Created by Paul on 4/21/14.
//  Copyright (c) 2014 Paul Solt. All rights reserved.
//

#import "SliderView.h"

@interface SliderView() {
    CGSize _intrinsicContentSize;
}
@end


@implementation SliderView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        
        // 1. Load .xib
        [[NSBundle mainBundle] loadNibNamed:@"SliderView" owner:self options:nil];
        
        // 2. Adjust bounds
        NSLog(@"frame: %@", NSStringFromCGRect(self.view.bounds));
        self.bounds = self.view.bounds;
        _intrinsicContentSize = self.bounds.size;
        
        // 3. add as a subview
        [self addSubview:self.view];
        
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
        
        // 3. Set the size
        _intrinsicContentSize = self.bounds.size;
        
    }
    return self;
}

- (IBAction)switchPressed:(id)sender {
}

- (CGSize)intrinsicContentSize {
    return _intrinsicContentSize;
}

@end
