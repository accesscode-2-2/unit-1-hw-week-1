//
//  APIManager.h
//  LearnAPI
//
//  Created by Kaisha Jones on 9/20/15.
//  Copyright © 2015 Kaisha Jones. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APIManager : NSObject

+ (void)GETRequestWithURL:(NSURL *)URL
        completionHandler:(void(^)(NSData *data, NSURLResponse *response, NSError *error)) completionHandler;

@end
