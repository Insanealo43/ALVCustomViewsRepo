//
//  UIViewController+ALVAdditions.m
//  ALVCustomViews
//
//  Created by Andrew Lopez-Vass on 10/28/15.
//  Copyright © 2015 Andrew Lopez-Vass. All rights reserved.
//

#import "UIViewController+ALVAdditions.h"
#import <objc/runtime.h>

@implementation UIViewController (ALVAdditions)

/*
    Because method swizzling affects global state, it is important to minimize the possibility of race conditions. +load is guaranteed to be loaded during class initialization, which provides a modicum of consistency for changing system-wide behavior.
 */

+ (void)load {
    /*
        Again, because swizzling changes global state, we need to take every precaution available to us in the runtime. Atomicity is one such precaution, as is a guarantee that code will be executed exactly once, even across different threads.
     */
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class class = [self class];
        
        SEL originalSelector = @selector(viewWillAppear:);
        SEL swizzledSelector = @selector(vc_viewWillAppear:);
        
        Method originalMethod = class_getInstanceMethod(class, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
        
        // When swizzling a class method, use the following:
        // Class class = object_getClass((id)self);
        // ...
        // Method originalMethod = class_getClassMethod(class, originalSelector);
        // Method swizzledMethod = class_getClassMethod(class, swizzledSelector);
        
        BOOL didAddMethod =
        class_addMethod(class,
                        originalSelector,
                        method_getImplementation(swizzledMethod),
                        method_getTypeEncoding(swizzledMethod));
        
        if (didAddMethod) {
            class_replaceMethod(class,
                                swizzledSelector,
                                method_getImplementation(originalMethod),
                                method_getTypeEncoding(originalMethod));
        } else {
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
    });
}

#pragma mark - Method Swizzling
- (void)vc_viewWillAppear:(BOOL)animated {
    [self vc_viewWillAppear:animated];
    NSLog(@"viewWillAppear: %@", self);
}

@end
