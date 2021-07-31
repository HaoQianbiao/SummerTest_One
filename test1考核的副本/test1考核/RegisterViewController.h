//
//  RegisterViewController.h
//  test1考核
//
//  Created by haoqianbiao on 2021/7/30.
//  Copyright © 2021 haoqianbiao. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol RegisterViewControllerDelegate<NSObject>
-(void) pushNameText:(NSString*) nameText;
-(void) pushPasswordText:(NSString*) passwordText;
@end
@interface RegisterViewController : UIViewController
<UITextFieldDelegate>
@property (nonatomic, strong) UITextField* userTextField;
@property (nonatomic, strong) UITextField* passwordTextField;
@property (nonatomic, strong) UITextField* passwordTextFieldTwo;
@property (nonatomic, assign) id<RegisterViewControllerDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
