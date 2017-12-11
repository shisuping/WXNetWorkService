//
//  WXNetWorkServiceTests.m
//  WXNetWorkServiceTests
//
//  Created by shisuping on 2017/12/11.
//  Copyright © 2017年 网信. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "WXNetWorkService.h"
#import "NSObject+WXNetWorkService.h"

@interface WXNetWorkServiceTests : XCTestCase

@property (strong) NSDictionary *result;

@end

@implementation WXNetWorkServiceTests

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
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    NSDictionary *result1 = [self connect:^(WXNetWorkService *service) {
        
        NSString *requestStr = [NSString stringWithFormat:@"http://123.206.196.124/mailMidware/login?username=%@",@"shisuping@q-clouds.com"];
        
        NSDictionary *userInfo = [NSDictionary dictionaryWithObjectsAndKeys:requestStr,KEY_RQUEST_URL, nil];
        
        NSLog(@"request is %@",userInfo);
        
        service.connect(userInfo);
        
    }];
    
    self.result = result1;
    XCTAssertTrue([self.result isKindOfClass:[NSDictionary class]]);
    
    XCTAssertNotNil(self.result);
    
    dispatch_queue_t _queue = dispatch_queue_create("", NULL);
    dispatch_async(_queue, ^{
        
      
    });
  
//        XCTAssertTrue([result isKindOfClass:[NSDictionary class]]);
//        XCTAssertNil(result);
        
//        XCTAssertNotNil(result);
        
//        if (result) {
//            NSLog(@"result is %@",result);
//        }else{
//            NSLog(@"应答为nil");
//        }
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
        
    }];
}

@end
