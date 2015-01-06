//
//  MainViewController.m
//  Training
//
//  Created by JD Benito on 2015-01-05.
//  Copyright (c) 2015 Hybrid Forge. All rights reserved.
//

#import "MainViewController.h"
#import "Categories.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Modify the text in the text field
    _myTextField.text = @"This is the main text";
    [_myTextField showBorders];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
