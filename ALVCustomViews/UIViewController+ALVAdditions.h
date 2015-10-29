//
//  UIViewController+ALVAdditions.h
//  ALVCustomViews
//
//  Created by Andrew Lopez-Vass on 10/28/15.
//  Copyright © 2015 Andrew Lopez-Vass. All rights reserved.
//

#import <UIKit/UIKit.h>

/*
    Method swizzling is the process of changing the implementation of an existing selector. It’s a technique made possible by the fact that method invocations in Objective-C can be changed at runtime, by changing how selectors are mapped to underlying functions in a class’s dispatch table.
 
    Pointer swizzling is the conversion of references based on name or position to direct pointer references. While the origins of Objective-C’s usage of the term are not entirely known, it’s understandable why it was co-opted, since method swizzling involves changing the reference of a function pointer by its selector.
 
    Injecting behavior into the view controller lifecycle, responder events, view drawing, or the Foundation networking stack are all good examples of how method swizzling can be used to great effect.
 */

@interface UIViewController (ALVAdditions)

@end
