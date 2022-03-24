//
//  MovieDetailTableViewCell.m
//  MovieDBObjc
//
//  Created by Nicolas Godoy on 22/03/22.
//

#import "MovieDetailsViewController.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface MovieDetailsViewController ()

@property (weak, nonatomic) IBOutlet UITableView *movieDetailsTableView;
@property (weak, nonatomic) IBOutlet UITableView *overviewTableView;

@end

@implementation MovieDetailsViewController 


- (void)viewDidLoad {
    [super viewDidLoad];
    _movieDetailsTableView.dataSource = self;
    _movieDetailsTableView.delegate = self;
    _overviewTableView.dataSource = self;
    _overviewTableView.delegate = self;
    
    self.title = @"DetailMovies";
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    if (indexPath == 0) {
        MovieDetailTableViewCell *cell = (MovieDetailTableViewCell *)[tableView dequeueReusableCellWithIdentifier: @"detail-cell"];
        
        NSDictionary *movie;
        
        [cell configureMovieDetail: [movie objectForKey:@"title"] genres:[movie objectForKey: @"genres"] rating: [movie objectForKey: @"vote_average"] path: [movie objectForKey:@"poster_path"]];
        
        return cell;
        
    } else {
        OverviewDetailTableViewCell *cell = (OverviewDetailTableViewCell *)[tableView dequeueReusableCellWithIdentifier: @"overview-cell"];
        
        NSDictionary *movie;
        
        cell.overviewLabel.text = movie.description;
        
        return cell;
    }
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}


@end
