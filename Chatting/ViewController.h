//
//  ViewController.h
//  Chatting
//
//  Created by user148651 on 1/25/19.
//  Copyright © 2019 user148651. All rights reserved.
//

#import <UIKit/UIKit.h>
@import Firebase;

@interface ViewController : UIViewController {
    
    UIActivityIndicatorView *activityIndicator;
}

@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end
