//
//  ListViewController.h
//  Training
//
//  Created by JD Benito on 2015-01-05.
//  Copyright (c) 2015 Hybrid Forge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListViewController : UIViewController {
    
    __weak IBOutlet UITableView *_myList;
    BOOL _toggle;
}

- (IBAction)btnReloadPressed:(id)sender;

@end
