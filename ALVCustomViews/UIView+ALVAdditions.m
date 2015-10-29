//
//  UIView+ALVAdditions.m
//  ALVCustomViews
//
//  Created by Andrew Lopez-Vass on 10/28/15.
//  Copyright © 2015 Andrew Lopez-Vass. All rights reserved.
//

#import "UIView+ALVAdditions.h"
#import "NSObject+ALVAdditions.h"

static NSString *const kNib = @"nib";

@implementation UIView (ALVAdditions)

- (UIView *)loadViewFromNib {
    // Check to see if .xib file exists before loading
    if ([[NSBundle mainBundle] pathForResource:[self className] ofType:kNib] != nil) {
        // Load from bundle and return first view found
        NSArray *views = [[NSBundle mainBundle] loadNibNamed:[self className] owner:self options:nil];
        return [views firstObject];
    }
    
    return nil;
}

@end
