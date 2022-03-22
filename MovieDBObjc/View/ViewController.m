//
//  ViewController.m
//  MovieDBObjc
//
//  Created by Matheus Homrich on 21/03/22.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) UITableView *moviesTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.moviesTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    
    self.moviesTableView.dataSource = self;
    self.moviesTableView.delegate = self;
    [self.view addSubview:self.moviesTableView]
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"cell"];
    cell.textLabel.text = @"teste";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end
