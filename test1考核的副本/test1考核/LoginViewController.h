//
//  LoginViewController.h
//  test1考核
//
//  Created by haoqianbiao on 2021/7/30.
//  Copyright © 2021 haoqianbiao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegisterViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface LoginViewController : UIViewController
< RegisterViewControllerDelegate,
UITextFieldDelegate>
@property (nonatomic, strong) UITextField* userTextField;
@property (nonatomic, strong) UITextField* passwordTextField;
@property (nonatomic, strong) NSString* nameStr;
@property (nonatomic, strong) NSString* passwordStr;
@end

NS_ASSUME_NONNULL_END
