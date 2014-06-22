//
//  JMViewController.m
//  NSUserDefaults, Segues, and Protocols Challenge Solution
//
//  Created by JONATHAN MARIANO on 6/21/14.
//
//

#import "JMViewController.h"
#import "JMCreateAccountViewController.h"

@interface JMViewController ()

@end

@implementation JMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.usernameLabel.text = [[NSUserDefaults standardUserDefaults] objectForKey: USER_NAME];
    self.passwordLabel.text = [[NSUserDefaults standardUserDefaults] objectForKey: USER_PASSWORD];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
