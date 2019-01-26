//
//  RegisterViewController.h
//  Chatting
//
//  Created by user148651 on 1/26/19.
//  Copyright © 2019 user148651. All rights reserved.
//

#import <UIKit/UIKit.h>
@import Firebase;

NS_ASSUME_NONNULL_BEGIN

@interface RegisterViewController : UIViewController {
    UIActivityIndicatorView *indicatorView;
}

@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;


@end

NS_ASSUME_NONNULL_END
