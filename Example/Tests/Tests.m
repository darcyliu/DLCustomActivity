//
//  DLCustomActivityTests.m
//  DLCustomActivityTests
//
//  Created by Darcy Liu on 11/24/2014.
//  Copyright (c) 2014 Darcy Liu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface DLCustomActivityTests : XCTestCase

@end

@implementation DLCustomActivityTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

#ifdef __IPHONE_8_0
- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}
#endif

@end