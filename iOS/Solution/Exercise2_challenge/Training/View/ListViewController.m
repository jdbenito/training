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

@interface ListViewController ()

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // The following offsets the table view content so that it starts below the status bar.
    _myList.contentInset = UIEdgeInsetsMake(10, 0, 0, 0);
    [_myList showBorders];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSInteger)tableView:(UITableView *)tableView_ numberOfRowsInSection:(NSInteger)section_ {
    return [[Person testData1] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView_ cellForRowAtIndexPath:(NSIndexPath *)indexPath_ {

    RowCellView *cell = [tableView_ dequeueReusableCellWithIdentifier:NSStringFromClass([RowCellView class])];
    NSInteger row = indexPath_.row;
    Person *curPerson = [Person testData1][row];
    [cell setPerson:curPerson];
    
    return cell;
}

@end
