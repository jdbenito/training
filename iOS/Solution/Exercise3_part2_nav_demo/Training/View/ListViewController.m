//
//  ListViewController.m
//  Training
//
//  Created by JD Benito on 2015-01-05.
//  Copyright (c) 2015 Hybrid Forge. All rights reserved.
//

#import "ListViewController.h"
#import "RowCellView.h"
#import "Person.h"
#import "Categories.h"
#import "DetailsViewController.h"

@interface ListViewController ()

- (NSArray *)testData;

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Initialize the toggle values
    
    // The following offsets the table view content so that it starts below the status bar.
    _myList.contentInset = UIEdgeInsetsMake(10, 0, 0, 0);
    [_myList showBorders];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray *)testData {
    if (_toggle) {
        return [Person testData1];
    }
    return [Person testData2];
}

#pragma mark - TableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView_ numberOfRowsInSection:(NSInteger)section_ {
    return [[self testData] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView_ cellForRowAtIndexPath:(NSIndexPath *)indexPath_ {
    RowCellView *cell = [tableView_ dequeueReusableCellWithIdentifier:NSStringFromClass([RowCellView class])];
    NSInteger row = indexPath_.row;
    Person *curPerson = [self testData][row];
    [cell setPerson:curPerson];
    
    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    DetailsViewController *details = (DetailsViewController *)[segue destinationViewController];
    NSInteger row = [[_myList indexPathForSelectedRow] row];
    Person *curPerson = [self testData][row];
    [details setPerson:curPerson];
}


#pragma mark - Actions
- (IBAction)btnReloadPressed:(id)sender {
    _toggle = !_toggle;
    [_myList reloadData];
}
@end
