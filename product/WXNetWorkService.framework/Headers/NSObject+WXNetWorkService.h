//
//  NSObject+NetworkService.h
//  eCloud
//
//  Created by shisuping on 17/11/1.
//  Copyright © 2017年 网信. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "WXNetWorkService.h"

@interface NSObject (NetworkService)

- (NSDictionary *)connect:(void(^)(WXNetWorkService *))block;

@end
