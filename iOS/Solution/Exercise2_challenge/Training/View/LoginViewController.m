//
//  LoginViewController.m
//  Training
//
//  Created by JD Benito on 2015-01-05.
//  Copyright (c) 2015 Hybrid Forge. All rights reserved.
//

#import "LoginViewController.h"
#import "Categories.h"

@interface LoginViewController () {
    dispatch_queue_t _myBackgroundQueue;
}

- (dispatch_queue_t)myBackgroundQueue;
- (void)showProgress;
- (void)hideProgress;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (dispatch_queue_t)myBackgroundQueue {
    if (_myBackgroundQueue == nil) {
        _myBackgroundQueue = dispatch_queue_create("com.hybridforge.training.login", NULL);
    }
    return _myBackgroundQueue;
}

- (IBAction)btnSignInPressed:(id)sender {
    [self showProgress];
    
    dispatch_async([self myBackgroundQueue], ^{
        
        // Simulate a task by adding a delay
        [NSThread sleepForTimeInterval:1.0f];
        
        // Inform the main thread that the task has been completed
        dispatch_async(dispatch_get_main_queue(), ^{
            [self hideProgress];
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"LOGIN"
                                                                message:@"Login was successful."
                                                               delegate:self
                                                      cancelButtonTitle:@"OK"
                                                      otherButtonTitles:nil];
            [alertView show];
        });
    });
}

- (IBAction)btnScreenPressed:(id)sender {
    [_txtUsername resignFirstResponder];
    [_txtPassword resignFirstResponder];
    
    // Alternatively, the 2 lines of code above can be commented and we run the following instead.
    // (NOTE: We added a category for UIResponder called "Additions". There we compute the first responder.)
//    [[UIResponder currentFirstResponder] resignFirstResponder];
}

- (void)showProgress {
    _btnSignIn.hidden = YES;
    _txtPassword.enabled = NO;
    _txtUsername.enabled = NO;
    [_activityIndicator startAnimating];
    
}

- (void)hideProgress {
    _btnSignIn.hidden = NO;
    _txtPassword.enabled = YES;
    _txtUsername.enabled = YES;
    [_activityIndicator stopAnimating];
}

@end
