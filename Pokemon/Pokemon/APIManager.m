//
//  APIManager.m
//  LearnAPI
//
//  Created by Kaisha Jones on 9/20/15.
//  Copyright © 2015 Kaisha Jones. All rights reserved.
//

#import "APIManager.h"

@implementation APIManager


// create a data task method. completely stateless, not going to maniupulate anything outside of it
// completion handler is the actual blokc that we are passing. 

+ (void)GETRequestWithURL:(NSURL *)URL
        completionHandler:(void(^)(NSData *data, NSURLResponse *response, NSError *error)) completionHandler {
    
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithURL:URL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSLog(@"%@", data);
        
        dispatch_async(dispatch_get_main_queue(), ^{
            completionHandler(data, response, error);
        });
    }];
    
    [task resume];
    
}


@end
