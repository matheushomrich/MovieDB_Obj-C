//
//  MovieTableViewCell.h
//  MovieDBObjc
//
//  Created by Nicolas Godoy on 22/03/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MovieTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *posterImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *ratingLabel;

- (void) configureMovie: (NSString*)title overview: (NSString*) overview rating: (NSNumber*) rating path: (NSString *) path;

@end

NS_ASSUME_NONNULL_END
