//
//  JMCreateAccountViewController.h
//  NSUserDefaults, Segues, and Protocols Challenge Solution
//
//  Created by JONATHAN MARIANO on 6/21/14.
//
//

#import <UIKit/UIKit.h>

//Keys for setting NSUserDefaults
#define USER_NAME @"username"
#define USER_PASSWORD @"password"

@protocol JMCreateAccountViewControllerDelegate <NSObject>

-(void)didCancel;
-(void)didCreateAccount;

@end

@interface JMCreateAccountViewController : UIViewController

@property (weak, nonatomic) id <JMCreateAccountViewControllerDelegate> delegate;

//TEXT FIELDS on Create Account view
@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *confirmPasswordTextField;

//BUTTONS
- (IBAction)createAccountButtonPressed:(UIButton *)sender;
- (IBAction)cancelButtonPressed:(UIButton *)sender;

@end
