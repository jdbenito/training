//
//  RowCellView.h
//  Training
//
//  Created by JD Benito on 2015-01-05.
//  Copyright (c) 2015 Hybrid Forge. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Person;
@interface RowCellView : UITableViewCell {
    
    __weak IBOutlet UILabel *_lblMain;
    __weak IBOutlet UILabel *_lblSubtext;
}

- (void)setPerson:(Person *)person_;

@end
