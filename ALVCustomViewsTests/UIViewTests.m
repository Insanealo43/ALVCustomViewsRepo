//
//  UIViewTests.m
//  ALVCustomViews
//
//  Created by Andrew Lopez-Vass on 10/28/15.
//  Copyright © 2015 Andrew Lopez-Vass. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UIView+ALVAdditions.h"

@interface UIViewTests : XCTestCase

@property (nonatomic, strong) UIView *testView;

@end

@implementation UIViewTests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.testView = [[UIView alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFramingMethods {
    // Set a frame on our view
    CGRect originalFrame = CGRectMake(5, 10, 15, 20);
    [self.testView setFrame:originalFrame];
    
    // Test change in X
    CGFloat newX = 100;
    CGRect newFrameX = [self.testView frameWithX:newX];
    XCTAssertEqual(newFrameX.origin.x, newX);
}

@end
