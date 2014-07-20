//
//  MSGSignInViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Sunny on 19/07/2014.
//  Copyright (c) 2014 Sunny. All rights reserved.
//

#import "MSGSignInViewController.h"

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
    [self performSegueWithIdentifier:@"toViewController" sender:sender];
}



- (void)performSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    NSLog(@"performSegueWithIdentifier");
}
@end
