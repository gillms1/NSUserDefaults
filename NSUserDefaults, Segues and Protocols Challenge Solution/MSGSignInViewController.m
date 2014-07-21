//
//  MSGSignInViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Sunny on 19/07/2014.
//  Copyright (c) 2014 Sunny. All rights reserved.
//

#import "MSGSignInViewController.h"
#import "MSGViewController.h"


@interface MSGSignInViewController ()

@end

@implementation MSGSignInViewController

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
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"wallpaper@2x.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
    [self.loginButton.titleLabel setTextColor:[UIColor whiteColor]];
    
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

- (IBAction)createAccountBarButtonPressed:(UIBarButtonItem *)sender {
    [self performSegueWithIdentifier:@"toCreateAccountViewController" sender:sender];
    
}
- (IBAction)loginButtonPressed:(UIButton *)sender {
    
    NSString *savedUsername = [[NSUserDefaults standardUserDefaults]objectForKey:USER_NAME];
    NSString *savedPassword = [[NSUserDefaults standardUserDefaults]objectForKey:PASSWORD];
    
    if ([self.userNameTextField.text isEqualToString:savedUsername] && [self.passwordTextField.text isEqualToString:savedPassword] ) {
        [self performSegueWithIdentifier:@"toViewController" sender:sender];
    } else {
        UIAlertView *loginFailAlert = [[UIAlertView alloc]initWithTitle:@"Login Failed" message:@"Please enter a valid username or password" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [loginFailAlert show];
    }
    
    
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

    if ([segue.destinationViewController isKindOfClass:[MSGCreateAccountViewController class]]) {
        NSLog(@"setting delegate for MSGCreateAccountViewController");
        MSGCreateAccountViewController *createAccountVC = segue.destinationViewController;
        createAccountVC.delegate = self;
    } else if ([segue.destinationViewController isKindOfClass:[MSGViewController class]]) {
        MSGViewController *mainVC = segue.destinationViewController;
        mainVC.username = [[NSUserDefaults standardUserDefaults]objectForKey:USER_NAME];
        mainVC.password = [[NSUserDefaults standardUserDefaults]objectForKey:PASSWORD];
        mainVC.delegate = self;
    }

    
}

- (void)didCancel
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didCreateAccount
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)pressedClose{
     [self dismissViewControllerAnimated:YES completion:nil];
}

@end
