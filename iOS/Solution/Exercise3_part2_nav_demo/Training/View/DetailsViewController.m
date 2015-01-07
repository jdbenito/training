//
//  DetailsViewController.m
//  Training
//
//  Created by JD Benito on 2015-01-06.
//  Copyright (c) 2015 Hybrid Forge. All rights reserved.
//

#import "DetailsViewController.h"
#import "Person.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Initialize the view
    [self setPerson:_person];
}

- (void)setPerson:(Person *)person_ {
    _person = person_;
    _lblMain.text = [person_ fullName];
    _lblSubtext.text = [person_ displayAge];
}

@end
