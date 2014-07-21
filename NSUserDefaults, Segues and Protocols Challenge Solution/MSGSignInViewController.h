//
//  MSGSignInViewController.h
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Sunny on 19/07/2014.
//  Copyright (c) 2014 Sunny. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MSGCreateAccountViewController.h"
#import "MSGViewController.h"

@interface MSGSignInViewController : UIViewController <MSGCreateAccountViewControllerDelegate, MSGViewControllerDelegate>

- (IBAction)createAccountBarButtonPressed:(UIBarButtonItem *)sender;
- (IBAction)loginButtonPressed:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UITextField *userNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UIButton *loginButton;


@end
