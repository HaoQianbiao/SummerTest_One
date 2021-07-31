//
//  LoginViewController.m
//  test1考核
//
//  Created by haoqianbiao on 2021/7/30.
//  Copyright © 2021 haoqianbiao. All rights reserved.
//

#import "LoginViewController.h"
#import "RegisterViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
#import "FifthViewController.h"
@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImageView* imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1考核/WechatIMG48.jpeg"]];
    [self.view insertSubview:imageView atIndex:0];
    
    _userTextField = [[UITextField alloc] initWithFrame:CGRectMake(100, 200, 250, 50)];
    _userTextField.borderStyle = UITextBorderStyleRoundedRect;
    _userTextField.delegate = self;
    _userTextField.placeholder = @"请输入账号";
    _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(100, 260, 250, 50)];
    _passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
    _passwordTextField.delegate = self;
    _passwordTextField.secureTextEntry = YES;
    UILabel* labelOne = [[UILabel alloc] initWithFrame:CGRectMake(20, 200, 70, 50)];
    labelOne.textColor = [UIColor blackColor];
    labelOne.text = @"账号";
    labelOne.font = [UIFont systemFontOfSize:18];
    UILabel* labelTwo = [[UILabel alloc] initWithFrame:CGRectMake(20, 260, 70, 50)];
    labelTwo.textColor = [UIColor blackColor];
    labelTwo.text = @"密码";
    labelTwo.font = [UIFont systemFontOfSize:18];
    
    UIButton* loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    loginButton.frame = CGRectMake(100, 320, 50, 50);
    [loginButton setTitle:@"登陆" forState:UIControlStateNormal];
    [loginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [loginButton addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchUpInside];
    loginButton.titleLabel.font = [UIFont systemFontOfSize:20];
    
    UIButton* registerButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    registerButton.frame = CGRectMake(200, 320, 50, 50);
    [registerButton setTitle:@"注册" forState:UIControlStateNormal];
    registerButton.titleLabel.font = [UIFont systemFontOfSize:20];
    [registerButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [registerButton addTarget:self action:@selector(pressToRegister) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:registerButton];
    [self.view addSubview:loginButton];
    [self.view addSubview:labelOne];
    [self.view addSubview:labelTwo];
    [self.view addSubview:_passwordTextField];
    [self.view addSubview:_userTextField];
    
    
    
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_userTextField resignFirstResponder];
    [_passwordTextField resignFirstResponder];
}

-(void) press {
    if (([_userTextField.text isEqualToString:@"iOSnb123"] && [_passwordTextField.text isEqualToString:@"123456789"]) |([_nameStr isEqualToString:_userTextField.text] && [_passwordStr isEqualToString:_passwordTextField.text])){
        
        FirstViewController* first = [[FirstViewController alloc] init];
        SecondViewController* second = [[SecondViewController alloc] init];
        ThirdViewController* third = [[ThirdViewController alloc] init];
        FourthViewController* fourth = [[FourthViewController alloc] init];
        FifthViewController* fifth = [[FifthViewController alloc] init];
        
        [first setTitle:@"1"];
        [second setTitle:@"2"];
        [third setTitle:@"3"];
        [fourth setTitle:@"4"];
        [fifth setTitle:@"5"];
        UINavigationController* navigationControllerFirst = [[UINavigationController alloc] initWithRootViewController:first];
        UINavigationController* navigationControllerSecond = [[UINavigationController alloc] initWithRootViewController:second];
        UINavigationController* navigationControllerThird = [[UINavigationController alloc] initWithRootViewController:third];
        UINavigationController* navigationControllerFourth = [[UINavigationController alloc] initWithRootViewController:fourth];
        UINavigationController* navigationControllerFifth = [[UINavigationController alloc] initWithRootViewController:fifth];
        
        NSArray* array = [[NSArray alloc] initWithObjects:navigationControllerFirst, navigationControllerSecond, navigationControllerThird, navigationControllerFourth, navigationControllerFifth,nil];
        
        
        UITabBarController* tabBarController = [[UITabBarController alloc] init];
        tabBarController.viewControllers = array;
        [self presentViewController:tabBarController animated:YES completion:nil];
        
    } else {
        UIAlertController* alertViewController = [UIAlertController alertControllerWithTitle:@"提示" message:@"密码账号输入有误!" preferredStyle:UIAlertControllerStyleAlert];
        [alertViewController addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:nil]];
        [self presentViewController:alertViewController animated:true completion:nil];
        
    }
}

-(void) pushNameText:(NSString *)nameText {
    _nameStr = nameText;
}

-(void) pushPasswordText:(NSString *)passwordText {
    _passwordStr = passwordText;
}


-(void) pressToRegister {
    RegisterViewController* registerViewController = [[RegisterViewController alloc] init];
    registerViewController.delegate = self;
    [self presentViewController:registerViewController animated:YES completion:nil];
}

@end
