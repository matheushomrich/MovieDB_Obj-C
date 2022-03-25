//
//  MovieDetailTableViewCell.m
//  MovieDBObjc
//
//  Created by Nicolas Godoy on 22/03/22.
//

#import "MovieDetailTableViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>

@implementation MovieDetailTableViewCell

- (void)prepareForReuse {
    [super prepareForReuse];
    _movieImageView.image = NULL;
    _movieTitleLabel.text = NULL;
    _movieGenresLabel.text = NULL;
    _movieRatingLabel.text = NULL;
}

- (void) configureMovieDetail: (NSString*)title genres: (NSString*) genres rating: (NSNumber*) rating path: (NSString *) path {
    NSString *completePath = @"https://image.tmdb.org/t/p/w500";
    completePath = [completePath stringByAppendingString: path];
    [_movieImageView sd_setImageWithURL:[NSURL URLWithString: completePath]];
    
    
    if (title != nil) {
        _movieTitleLabel.text = title;
    } else {
        _movieTitleLabel.text = @"No title available";
    }
    
    if (genres != nil) {
        _movieGenresLabel.text = genres;
    } else {
        _movieGenresLabel.text = @"No genres available";
    }
    
    if (rating != nil) {
        _movieRatingLabel.text = [NSString stringWithFormat: @"%@", rating];
    } else {
        _movieRatingLabel.text = @"No rating available";
    }
    
}

@end
