//
//  NetworkServiceMaker.h
//  eCloud
//
//  Created by shisuping on 17/11/1.
//  Copyright © 2017年 网信. All rights reserved.
//

#import <Foundation/Foundation.h>

#define KEY_RQUEST_URL @"requestUrl"
#define KEY_RESPONSE_DATA @"responseData"

@interface WXNetWorkService : NSObject

@property (strong) NSDictionary *result;

- (WXNetWorkService *(^)(NSDictionary *))connect;


@end
