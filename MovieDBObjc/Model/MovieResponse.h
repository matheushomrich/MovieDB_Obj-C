//
//  MovieResponse.h
//  MovieDBObjc
//
//  Created by Nicolas Godoy on 22/03/22.
//

#import <Foundation/Foundation.h>
#import <Movie.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (MovieResponse)

@property (strong, nonatomic) NSArray<Movie> *movies;
@property (strong, nonatomic) NSString *error;

@end

NS_ASSUME_NONNULL_END
