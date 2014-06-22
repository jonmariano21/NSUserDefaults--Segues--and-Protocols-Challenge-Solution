//
//  JMCreateAccountViewController.m
//  NSUserDefaults, Segues, and Protocols Challenge Solution
//
//  Created by JONATHAN MARIANO on 6/21/14.
//
//

#import "JMCreateAccountViewController.h"

@interface JMCreateAccountViewController ()

@end

@implementation JMCreateAccountViewController

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

- (IBAction)createAccountButtonPressed:(UIButton *)sender {
    
    if( (self.usernameTextField.text.length != 0) && (self.passwordTextField.text.length != 0) && [self.passwordTextField.text isEqualToString: self.confirmPasswordTextField.text] ){
    
        [[NSUserDefaults standardUserDefaults] setObject: self.usernameTextField.text forKey: USER_NAME];
        [[NSUserDefaults standardUserDefaults] setObject: self.passwordTextField.text forKey: USER_PASSWORD];
        [[NSUserDefaults standardUserDefaults] synchronize];
    
        [self.delegate didCreateAccount]; //implemented in JMSignInViewController
        
    }else{
        //ALERT b/c of wrong input
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle: @"Error" message: @"Information not entered correctly" delegate:nil cancelButtonTitle: @"Ok" otherButtonTitles: nil];
        
        //Display the Alert
        [alertView show];
        
    }
    
}

- (IBAction)cancelButtonPressed:(UIButton *)sender {
    
    [self.delegate didCancel]; //implemented in JMSignInViewController
    
}
@end
