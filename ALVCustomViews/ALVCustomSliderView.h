//
//  ALVCustomSliderView.h
//  ALVCustomViews
//
//  Created by Andrew Lopez-Vass on 10/28/15.
//  Copyright © 2015 Andrew Lopez-Vass. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ALVView.h"

@interface ALVCustomSliderView : ALVView

@property (strong, nonatomic) IBOutlet UIView *nibView;
@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)switchPressed:(id)sender;

@end
