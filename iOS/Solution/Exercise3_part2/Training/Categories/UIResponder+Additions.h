//
//  UIResponder+Additions.h
//  Training
//
//  Created by JD Benito on 2015-01-05.
//  Copyright (c) 2015 Hybrid Forge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIResponder (Additions)

/*!
 @function currentFirstResponder
 @discussion Returns the UI component that has first responder status
 */
+(id)currentFirstResponder;

@end
