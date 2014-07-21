//
//  MSGViewController.h
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Sunny on 19/07/2014.
//  Copyright (c) 2014 Sunny. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MSGViewControllerDelegate <NSObject>

-(void)pressedClose;

@end

@interface MSGViewController : UIViewController

@property (weak, nonatomic) id <MSGViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UIView *viewController;
@property (strong, nonatomic) IBOutlet UILabel *viewControllerLabel1;
@property (strong, nonatomic) IBOutlet UILabel *viewControllerLabel2;

@property (strong, nonatomic) NSString *username;
@property (strong, nonatomic) NSString *password;

- (IBAction)pressedCloseButton:(UIButton *)sender;

@end
