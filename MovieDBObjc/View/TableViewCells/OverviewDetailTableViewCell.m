//
//  OverviewDetailTableViewCell.m
//  MovieDBObjc
//
//  Created by Nicolas Godoy on 22/03/22.
//

#import "OverviewDetailTableViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>

@implementation OverviewDetailTableViewCell

- (void)prepareForReuse {
    [super prepareForReuse];
    _overviewLabel.text = NULL;
}

@end
