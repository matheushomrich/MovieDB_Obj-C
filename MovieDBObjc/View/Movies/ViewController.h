//
//  ViewController.h
//  MovieDBObjc
//
//  Created by Matheus Homrich on 21/03/22.
//

#import <UIKit/UIKit.h>
#import "MovieTableViewCell.h"
#import "TmdbAPI.h"
#import "MovieDetailsViewController.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) TmdbAPI *tmdbAPI;
@property (strong, nonatomic) NSDictionary *nowPlayingMovies;
@property (strong, nonatomic) NSDictionary *popularMovies;

- (void) loadPopularMovies;
- (void) loadNowPlayingMovies;

@end
