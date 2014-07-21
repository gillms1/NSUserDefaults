//
//  MSGCreateAccountViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Sunny on 19/07/2014.
//  Copyright (c) 2014 Sunny. All rights reserved.
//

#import "MSGCreateAccountViewController.h"

@interface MSGCreateAccountViewController ()

@end

@implementation MSGCreateAccountViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)createButtonPressed:(UIButton *)sender {
    
    if (self.userNameTextField.text.length > 0 && self.passwordTextField.text.length > 0 && self.confirmPasswordTextField.text.length > 0) {
        [[NSUserDefaults standardUserDefaults] setObject:self.userNameTextField.text forKey:USER_NAME];
        [[NSUserDefaults standardUserDefaults] setObject:self.passwordTextField.text forKey:PASSWORD];
    
        [self.delegate didCancel];
        
    } else if (![self.passwordTextField.text isEqualToString:self.confirmPasswordTextField.text]) {
        UIAlertView *pwordMisMatchAlert = [[UIAlertView alloc]initWithTitle:@"Password Mismatch" message:@"Please make sure your password & confirmation passoword are the same" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [pwordMisMatchAlert show];
    } else {
        UIAlertView *emptyFieldAlert = [[UIAlertView alloc]initWithTitle:@"Empty Field" message:@"Please ensure you fill in all fields" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [emptyFieldAlert show];
    }
}

- (IBAction)cancelButtonPressed:(UIButton *)sender {
    [self.delegate didCancel];
}


@end
