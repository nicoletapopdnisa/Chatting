//
//  ChatViewController.m
//  Chatting
//
//  Created by user148651 on 1/26/19.
//  Copyright © 2019 user148651. All rights reserved.
//

#import "ChatViewController.h"

@interface ChatViewController ()

@end

@implementation ChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"aici");
}

- (IBAction)logOutPressed:(id)sender {
    NSError *signOutError;
    BOOL status = [[FIRAuth auth] signOut:&signOutError];
    if (!status) {
        NSLog(@"Error signing out: %@", signOutError);
        return;
    }
    
    [self.view.window.rootViewController dismissViewControllerAnimated:true completion:nil];
}

@end
