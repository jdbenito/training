//
//  UILabel+Debugging.m
//  Training
//
//  Created by JD Benito on 2015-01-05.
//  Copyright (c) 2015 Hybrid Forge. All rights reserved.
//

#import "UILabel+Debugging.h"

@implementation UILabel (Debugging)

- (void)showBorders {
    [self showBordersUsingColor:[UIColor redColor]];
}


- (void)showBordersUsingColor:(UIColor *)borderColor_ {
#if DEBUG
    self.layer.borderWidth = 1.0f;
    self.layer.borderColor = [borderColor_ CGColor];
#endif
}

@end
