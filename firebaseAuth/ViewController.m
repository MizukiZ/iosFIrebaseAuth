//
//  ViewController.m
//  firebaseAuth
//
//  Created by Mizuki Zenta on 29/3/19.
//  Copyright © 2019 Mizuki Zenta. All rights reserved.
//

#import "ViewController.h"
@import Firebase;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *emailInput;
@property (weak, nonatomic) IBOutlet UITextField *passwordInput;

@end

@implementation ViewController
- (IBAction)registerBtn:(id)sender {
    NSString *email = self.emailInput.text;
    NSString *password = self.passwordInput.text;
    
    [[FIRAuth auth] createUserWithEmail:email
                               password:password
                             completion:^(FIRAuthDataResult * _Nullable authResult,
                                          NSError * _Nullable error) {
                                 // ...
                             }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
