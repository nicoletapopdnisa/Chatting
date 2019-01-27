//
//  RegisterViewController.m
//  Chatting
//
//  Created by user148651 on 1/26/19.
//  Copyright © 2019 user148651. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)registerPressed:(id)sender {
    [indicatorView startAnimating];
    
    [[FIRAuth auth] createUserWithEmail:self->_emailTextField.text password:self->_passwordTextField.text completion:^(FIRAuthDataResult * _Nullable authResult, NSError * _Nullable error) {
        if(!error) {
            [self->indicatorView stopAnimating];
            [self performSegueWithIdentifier:@"goToChat" sender:self];
        }
        
        self->alertController = [UIAlertController alertControllerWithTitle:@"Invalid input!" message:[error localizedDescription] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        
        [self->alertController addAction:action];
        [self presentViewController:self->alertController animated:true completion:nil];
        
    }];
}

@end
