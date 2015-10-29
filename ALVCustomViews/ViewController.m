//
//  ViewController.m
//  ALVCustomViews
//
//  Created by Andrew Lopez-Vass on 10/28/15.
//  Copyright © 2015 Andrew Lopez-Vass. All rights reserved.
//

#import "ViewController.h"
#import "ALVCustomSliderView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1. Create a view (want the view to size itself!)
    ALVCustomSliderView *sliderView = [[ALVCustomSliderView alloc] init];
    [sliderView setRestorationIdentifier:@"Testing"];
    NSLog(@"%@", sliderView.restorationIdentifier);
    
    // 2. Add as subview
    [self.view addSubview:sliderView];
    
    // Do Stuff...
    sliderView.center = CGPointMake(100, 400);
    
    // Turn off autosizing masks
    sliderView.translatesAutoresizingMaskIntoConstraints = NO;
    
    // Pin the programmatically initialized custom view to the bottom of the controller's view
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:sliderView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1.0 constant:-10]];
    
    // Pin to center X axis
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:sliderView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
}

@end
