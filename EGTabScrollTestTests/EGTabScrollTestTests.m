//
//  EGTabScrollTestTests.m
//  EGTabScrollTestTests
//
//  Created by Leo Natan (Wix) on 23/08/2017.
//  Copyright © 2017 Leo Natan (Wix). All rights reserved.
//

#import <XCTest/XCTest.h>
@import EarlGrey;

@interface EGTabScrollTestTests : XCTestCase

@end

@implementation EGTabScrollTestTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testExample {
	[[EarlGrey selectElementWithMatcher:grey_accessibilityID(@"TableViewXXX")] performAction:grey_scrollInDirection(kGREYDirectionDown, 500)];
}

@end
