//
//  FirendViewController.h
//  test1考核
//
//  Created by haoqianbiao on 2021/7/30.
//  Copyright © 2021 haoqianbiao. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FirendViewController : UIViewController
<UITableViewDelegate,
UITableViewDataSource>
@property (nonatomic, strong) UITableView* tableView;
@end

NS_ASSUME_NONNULL_END
