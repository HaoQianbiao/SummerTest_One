//
//  FirendViewController.m
//  test1考核
//
//  Created by haoqianbiao on 2021/7/30.
//  Copyright © 2021 haoqianbiao. All rights reserved.
//

#import "FirendViewController.h"
#import "FirendTableViewCell.h"
@interface FirendViewController ()

@end

@implementation FirendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"朋友圈";
    UIBarButtonItem* rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:nil action:nil];
    self.navigationItem.rightBarButtonItem = rightButton;
    self.view.backgroundColor = [UIColor whiteColor];

    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView registerClass:[FirendTableViewCell class] forCellReuseIdentifier:@"0"];
    [_tableView registerClass:[FirendTableViewCell class] forCellReuseIdentifier:@"1"];
    [_tableView registerClass:[FirendTableViewCell class] forCellReuseIdentifier:@"2"];
    [self.view addSubview:_tableView];
}


-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 11;
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        return 300;
    } else {
        return 150;
    }
    
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row % 2 == 0 && indexPath.row != 0) {
        FirendTableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:@"0" forIndexPath:indexPath];
        return cell;
    } else if (indexPath.row % 2 == 1){
        FirendTableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:@"1" forIndexPath:indexPath];
        return cell;
    } else {
        FirendTableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:@"2" forIndexPath:indexPath];
        return cell;
    }
}

@end
