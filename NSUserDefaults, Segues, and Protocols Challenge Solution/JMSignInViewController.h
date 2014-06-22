//
//  JMSignInViewController.h
//  NSUserDefaults, Segues, and Protocols Challenge Solution
//
//  Created by JONATHAN MARIANO on 6/21/14.
//
//

#import <UIKit/UIKit.h>
#import "JMCreateAccountViewController.h"

@interface JMSignInViewController : UIViewController <JMCreateAccountViewControllerDelegate>

//TEXT FIELDS on Sign In view
@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;

//BUTTONS
- (IBAction)createAccountBarButtonItemPressed:(UIBarButtonItem *)sender;
- (IBAction)loginButtonPressed:(UIButton *)sender;
@end
