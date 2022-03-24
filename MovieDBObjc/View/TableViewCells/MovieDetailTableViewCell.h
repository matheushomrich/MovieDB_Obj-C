//
//  MovieDetailTableViewCell.h
//  MovieDBObjc
//
//  Created by Nicolas Godoy on 22/03/22.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface MovieDetailTableViewCell: UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *movieImageView;
@property (weak, nonatomic) IBOutlet UILabel *movieTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *movieGenresLabel;
@property (weak, nonatomic) IBOutlet UILabel *movieRatingLabel;

- (void) configureMovieDetail: (NSString*)title genres: (NSString*) genres rating: (NSNumber*) rating path: (NSString *) path;
@end

NS_ASSUME_NONNULL_END
