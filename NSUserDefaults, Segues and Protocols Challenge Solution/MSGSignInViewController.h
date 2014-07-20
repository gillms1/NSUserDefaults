//
//  MSGSignInViewController.h
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Sunny on 19/07/2014.
//  Copyright (c) 2014 Sunny. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MSGSignInViewController : UIViewController
- (IBAction)createAccountBarButtonPressed:(UIBarButtonItem *)sender;
@property (strong, nonatomic) IBOutlet UITextField *userNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
- (IBAction)loginButtonPressed:(UIButton *)sender;

@end
