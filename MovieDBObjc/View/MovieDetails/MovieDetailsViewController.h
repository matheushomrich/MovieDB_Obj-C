//
//  MovieDetailTableViewCell.h
//  MovieDBObjc
//
//  Created by Nicolas Godoy on 22/03/22.
//

#import <UIKit/UIKit.h>
#import "MovieDetailTableViewCell.h"
#import "OverviewDetailTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface MovieDetailsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSDictionary *movie;

@end

NS_ASSUME_NONNULL_END
