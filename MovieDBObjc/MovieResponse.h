//
//  NSObject+Movie.h
//  MovieDBObjc
//
//  Created by Matheus Homrich on 22/03/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (MovieResponse)

@property (strong, nonatomic) NSArray *movies[Movie];
@property (strong, nonatomic) NSString *error;

@end

NS_ASSUME_NONNULL_END
