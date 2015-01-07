//
//  DetailsViewController.h
//  Training
//
//  Created by JD Benito on 2015-01-06.
//  Copyright (c) 2015 Hybrid Forge. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Person;
@interface DetailsViewController : UIViewController {
    
    __weak IBOutlet UILabel *_lblMain;
    __weak IBOutlet UILabel *_lblSubtext;
    Person *_person;
}

- (void)setPerson:(Person *)person_;

@end
