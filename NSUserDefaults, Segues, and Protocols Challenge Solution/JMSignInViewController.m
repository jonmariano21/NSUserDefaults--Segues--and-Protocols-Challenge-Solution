//
//  JMSignInViewController.m
//  NSUserDefaults, Segues, and Protocols Challenge Solution
//
//  Created by JONATHAN MARIANO on 6/21/14.
//
//

#import "JMSignInViewController.h"

@interface JMSignInViewController ()

@end

@implementation JMSignInViewController

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


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if( [segue.destinationViewController isKindOfClass:[JMCreateAccountViewController class]] ){
        JMCreateAccountViewController *createAccountVC = segue.destinationViewController;
        createAccountVC.delegate = self;
    }
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

- (IBAction)createAccountBarButtonItemPressed:(UIBarButtonItem *)sender {
    
    [self performSegueWithIdentifier:@"toCreateAccountViewControllerSegue" sender: sender];
    
}

- (IBAction)loginButtonPressed:(UIButton *)sender {
    
    NSString *username = [[NSUserDefaults standardUserDefaults] objectForKey: USER_NAME];
    NSString *password = [[NSUserDefaults standardUserDefaults] objectForKey: USER_PASSWORD];
    
    if( [self.usernameTextField.text isEqualToString: username] && [self.passwordTextField.text isEqualToString: password]){
        
        [self performSegueWithIdentifier:@"toViewControllerSegue" sender: sender];
       
    }else{
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle: @"Error" message: @"Username or password does not work" delegate: nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        
        [alertView show];
    }
    
}


#pragma mark - JMCreateAccountViewController Delegate

-(void)didCancel{
    [self dismissViewControllerAnimated: YES completion:nil];
}

-(void)didCreateAccount{
    [self dismissViewControllerAnimated: YES completion:nil];

}

@end
