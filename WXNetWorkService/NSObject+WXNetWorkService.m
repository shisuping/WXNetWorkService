//
//  NSObject+NetworkService.m
//  eCloud
//
//  Created by shisuping on 17/11/1.
//  Copyright © 2017年 网信. All rights reserved.
//

#import "NSObject+WXNetWorkService.h"

@implementation NSObject (NetworkService)

- (NSDictionary *)connect:(void(^)(WXNetWorkService *))block{
    WXNetWorkService *service = [[WXNetWorkService alloc]init];
    block(service);
    return service.result;
}

@end
