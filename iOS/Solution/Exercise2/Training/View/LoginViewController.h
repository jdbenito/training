//
//  LoginViewController.h
//  Training
//
//  Created by JD Benito on 2015-01-05.
//  Copyright (c) 2015 Hybrid Forge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController {
    
    __weak IBOutlet UIButton *_btnSignIn;
    __weak IBOutlet UIActivityIndicatorView *_activityIndicator;
    __weak IBOutlet UITextField *_txtUsername;
    __weak IBOutlet UITextField *_txtPassword;
}
- (IBAction)btnSignInPressed:(id)sender;
- (IBAction)btnScreenPressed:(id)sender;

@end
