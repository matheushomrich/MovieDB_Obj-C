//
//  Movie.h
//  MovieDBObjc
//
//  Created by Nicolas Godoy on 22/03/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Movie : NSObject

@property NSNumber *id;
@property NSString *title;
@property NSURL *poster_path;
@property NSData *poster;
@property NSString *overview;
@property NSObject *vote_average;
@property NSString *genre_ids;
@property NSArray *genres;

@end

NS_ASSUME_NONNULL_END
