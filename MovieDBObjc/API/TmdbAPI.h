//
//  TmdbAPI.h
//  MovieDBObjc
//
//  Created by Nicolas Godoy on 22/03/22.
//

#import <Foundation/Foundation.h>


@interface TmdbAPI : NSObject

typedef void (^COMPLETION_BLOCK)(NSDictionary *json, NSError *error);
- (void)get:(NSString *)path completionBlock: (COMPLETION_BLOCK) completion;

@end
