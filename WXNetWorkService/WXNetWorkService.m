//
//  NetworkServiceMaker.m
//  eCloud
//
//  Created by shisuping on 17/11/1.
//  Copyright © 2017年 网信. All rights reserved.
//

#import "WXNetWorkService.h"

@implementation WXNetWorkService

- (WXNetWorkService *(^)(NSDictionary *))connect{
    return ^(NSDictionary *userinfo) {

        NSString *urlStr = userinfo[KEY_RQUEST_URL];
        if (urlStr.length) {
            NSURL *url = [NSURL URLWithString:urlStr];
            NSURLRequest *request = [[NSURLRequest alloc]initWithURL:url];
            
            NSURLResponse *response;
            NSError *error;
            NSData *data=[NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
            
            if (response.expectedContentLength) {
                if (data.length) {
                    self.result = [NSDictionary dictionaryWithObjectsAndKeys:data,KEY_RESPONSE_DATA,nil];
                }
            }
        }
        
        return self;
    };
}



@end
