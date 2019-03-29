//
//  LoginController.m
//  firebaseAuth
//
//  Created by Mizuki Zenta on 29/3/19.
//  Copyright © 2019 Mizuki Zenta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@import Firebase;

@interface LoginController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *emailInput;
@property (weak, nonatomic) IBOutlet UITextField *passwordInput;
@end

@implementation LoginController

- (IBAction)loginBtn:(id)sender {
    NSString *email = self.emailInput.text;
    NSString *passowrd = self.passwordInput.text;
    
    [[FIRAuth auth] signInWithEmail:email
                           password:passowrd
                         completion:^(FIRAuthDataResult * _Nullable authResult,
                                      NSError * _Nullable error) {
                             NSLog(@"The result is %@", authResult);
                         }];
}


@end
