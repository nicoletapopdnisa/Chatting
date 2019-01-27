//
//  ViewController.m
//  Chatting
//
//  Created by user148651 on 1/25/19.
//  Copyright © 2019 user148651. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)logInPressed:(id)sender {
    [activityIndicator startAnimating];
    
    [[FIRAuth auth] signInWithEmail:self->_emailTextField.text
                           password:self->_passwordTextField.text
                         completion:^(FIRAuthDataResult * _Nullable authResult,
                                      NSError * _Nullable error) {
                             
                             if(!error) {
                                 [self->activityIndicator stopAnimating];
                                 [self performSegueWithIdentifier:@"goToChat" sender:self];
                             }
                             
                             self->alertController = [UIAlertController alertControllerWithTitle:@"Invalid input!" message:[error localizedDescription] preferredStyle:UIAlertControllerStyleAlert];
                             UIAlertAction *action = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                                 
                             }];
                             
                             [self->alertController addAction:action];
                             [self presentViewController:self->alertController animated:true completion:nil];
                         }];
    
}


- (IBAction)registerPressed:(id)sender {
    
    [self performSegueWithIdentifier:@"goToRegister" sender:self];
}

@end
