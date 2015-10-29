//
//  ALVCustomSliderView.m
//  ALVCustomViews
//
//  Created by Andrew Lopez-Vass on 10/28/15.
//  Copyright © 2015 Andrew Lopez-Vass. All rights reserved.
//

#import "ALVCustomSliderView.h"
#import "NSObject+ALVAdditions.h"
#import "UIView+ALVAdditions.h"

@implementation ALVCustomSliderView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor blueColor]];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setBackgroundColor:[UIColor orangeColor]];
    }
    return self;
}

- (IBAction)switchPressed:(id)sender {
    [UIView animateWithDuration:1.0 animations:^{
        [sender setAlpha:0];
        
    } completion:^(BOOL finished) {
        [sender setAlpha:1.0];
    }];
}

@end
