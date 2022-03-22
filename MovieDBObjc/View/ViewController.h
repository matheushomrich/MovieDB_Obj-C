//
//  ViewController.h
//  MovieDBObjc
//
//  Created by Matheus Homrich on 21/03/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>


@property (strong, nonatomic) IBOutlet UITableView *moviesTableView;
 



@end

