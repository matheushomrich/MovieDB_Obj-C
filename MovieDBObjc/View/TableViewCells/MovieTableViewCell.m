//
//  MovieTableViewCell.m
//  MovieDBObjc
//
//  Created by Nicolas Godoy on 22/03/22.
//

#import "MovieTableViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>

@implementation MovieTableViewCell

- (void)prepareForReuse {
    [super prepareForReuse];
    _posterImageView.image = NULL;
    _titleLabel.text = NULL;
    _descriptionLabel.text = NULL;
    _ratingLabel.text = NULL;
}

- (void) configureMovie: (NSString*)title overview: (NSString*) overview rating: (NSNumber*) rating path: (NSString *) path {
    NSString *completePath = @"https://image.tmdb.org/t/p/w500";
    completePath = [completePath stringByAppendingString: path];
    [_posterImageView sd_setImageWithURL:[NSURL URLWithString: completePath]];
    
    if (title != nil) {
        _titleLabel.text = title;
    } else {
        _titleLabel.text = @"No title available";
    }
    
    if (overview != nil) {
        _descriptionLabel.text = overview;
    } else {
        _descriptionLabel.text = @"No description available";
    }
    
    if (rating != nil) {
        _ratingLabel.text = [NSString stringWithFormat: @"%@", rating];
    } else {
        _ratingLabel.text = @"No rating available";
    }
}

@end
