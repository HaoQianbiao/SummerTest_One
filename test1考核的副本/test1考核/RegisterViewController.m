//
//  RegisterViewController.m
//  test1考核
//
//  Created by haoqianbiao on 2021/7/30.
//  Copyright © 2021 haoqianbiao. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImageView* imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1考核/WechatIMG48.jpeg"]];
    [self.view insertSubview:imageView atIndex:0];
    _userTextField = [[UITextField alloc] initWithFrame:CGRectMake(120, 200, 250, 50)];
    _userTextField.borderStyle = UITextBorderStyleRoundedRect;
    _userTextField.delegate = self;
    _userTextField.placeholder = @"请输入账号";
    
    _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(120, 260, 250, 50)];
    _passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
    _passwordTextField.delegate = self;
    _passwordTextField.secureTextEntry = YES;
    
    _passwordTextFieldTwo = [[UITextField alloc] initWithFrame:CGRectMake(120, 320, 250, 50)];
    _passwordTextFieldTwo.borderStyle = UITextBorderStyleRoundedRect;
    _passwordTextFieldTwo.delegate = self;
    _passwordTextFieldTwo.secureTextEntry = YES;
    
    UILabel* labelOne = [[UILabel alloc] initWithFrame:CGRectMake(20, 200, 70, 50)];
    labelOne.textColor = [UIColor blackColor];
    labelOne.text = @"账号";
    labelOne.font = [UIFont systemFontOfSize:18];
    UILabel* labelTwo = [[UILabel alloc] initWithFrame:CGRectMake(20, 260, 70, 50)];
    labelTwo.textColor = [UIColor blackColor];
    labelTwo.text = @"密码";
    labelTwo.font = [UIFont systemFontOfSize:18];
    UILabel* labelThree = [[UILabel alloc] initWithFrame:CGRectMake(20, 320, 100, 50)];
    labelThree.textColor = [UIColor blackColor];
    labelThree.text = @"确认密码";
    labelThree.font = [UIFont systemFontOfSize:18];
    
    UIButton* loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    loginButton.frame = CGRectMake(100, 400, 250, 30);
    [loginButton setTitle:@"注册" forState:UIControlStateNormal];
    [loginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [loginButton addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    loginButton.titleLabel.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:loginButton];
    [self.view addSubview:labelOne];
    [self.view addSubview:labelTwo];
    [self.view addSubview:labelThree];
    [self.view addSubview:_passwordTextField];
    [self.view addSubview:_userTextField];
    [self.view addSubview:_passwordTextFieldTwo];
}



-(void) pressRegister {
    if ([_passwordTextFieldTwo.text isEqualToString:_passwordTextField.text] && _passwordTextField.text != nil && _passwordTextFieldTwo.text != nil) {
        [self.delegate pushNameText:_userTextField.text];
        [self.delegate pushPasswordText:_passwordTextField.text];
        [self dismissViewControllerAnimated:YES completion:nil];
    } else {
        UIAlertController* alertViewController = [UIAlertController alertControllerWithTitle:@"提示" message:@"两次密码输入不一致!" preferredStyle:UIAlertControllerStyleAlert];
        [alertViewController addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:nil]];
        [self presentViewController:alertViewController animated:true completion:nil];
    }

}
@end
