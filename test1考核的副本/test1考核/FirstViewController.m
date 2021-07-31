//
//  FirstViewController.m
//  test1考核
//
//  Created by haoqianbiao on 2021/7/30.
//  Copyright © 2021 haoqianbiao. All rights reserved.
//

#import "FirstViewController.h"
#import "FirendViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIBarButtonItem* buttonItem = [[UIBarButtonItem alloc] initWithTitle:@"push" style:UIBarButtonItemStylePlain target:self action:@selector(press)];
    self.navigationItem.rightBarButtonItem = buttonItem;
    self.view.backgroundColor = [UIColor whiteColor];
}

-(void) press {
    FirendViewController* fired = [[FirendViewController alloc] init];
    [self.navigationController pushViewController:fired animated:YES];
}

@end
