//
//  TmdbAPI.m
//  MovieDBObjc
//
//  Created by Nicolas Godoy on 22/03/22.
//

#import <Foundation/Foundation.h>
#import "TmdbAPI.h"

@interface TmdbAPI ()

@end

@implementation TmdbAPI: NSObject

- (void)get:(NSString *)path completionBlock: (COMPLETION_BLOCK) completion {
    NSURL *url = [NSURL URLWithString:path];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    NSURLSessionDataTask* task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        dispatch_async(dispatch_get_main_queue(), ^{
            completion(json, NULL);
        });
    }];
    [task resume];
}

@end
