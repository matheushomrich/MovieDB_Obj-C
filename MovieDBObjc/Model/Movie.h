//
//  Movie.h
//  MovieDBObjc
//
//  Created by Nicolas Godoy on 22/03/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Movie)

@property int *id;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *image;
@property (strong, nonatomic) NSString *overview;
@property (strong, nonatomic) NSObject *rating;
@property int genre_ids[];
@property (strong, nonatomic) NSArray *genres;

@end

NS_ASSUME_NONNULL_END
