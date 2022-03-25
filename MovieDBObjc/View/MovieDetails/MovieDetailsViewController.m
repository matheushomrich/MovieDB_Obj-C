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

@end

@implementation MovieDetailsViewController 


- (void)viewDidLoad {
    [super viewDidLoad];
    _movieDetailsTableView.dataSource = self;
    _movieDetailsTableView.delegate = self;
    
    self.title = @"DetailMovies";
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
        MovieDetailTableViewCell *cell = (MovieDetailTableViewCell *)[tableView dequeueReusableCellWithIdentifier: @"detail-cell"];
        
        [cell configureMovieDetail: [_movie objectForKey:@"title"] genres:[_movie objectForKey: @"genres"] rating: [_movie objectForKey: @"vote_average"] path: [_movie objectForKey:@"poster_path"]];
        
        return cell;
        
    } else {
        OverviewDetailTableViewCell *cell = (OverviewDetailTableViewCell *)[tableView dequeueReusableCellWithIdentifier: @"overview-cell"];
        
        cell.overviewLabel.text = _movie[@"overview"];
        
        return cell;
    }
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}


@end
