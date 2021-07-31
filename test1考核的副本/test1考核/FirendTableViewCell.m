//
//  FirendTableViewCell.m
//  test1考核
//
//  Created by haoqianbiao on 2021/7/30.
//  Copyright © 2021 haoqianbiao. All rights reserved.
//

#import "FirendTableViewCell.h"

@implementation FirendTableViewCell

-(instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if([reuseIdentifier isEqualToString:@"0"]) {
        UILabel* labelOne = [[UILabel alloc] initWithFrame:CGRectMake(70, 5, 200, 50)];
        labelOne.text = @"晚霞";
        labelOne.font = [UIFont systemFontOfSize:20];
        labelOne.textColor = [UIColor blackColor];
        UIImageView* imageViewOne = [[UIImageView alloc] initWithFrame:CGRectMake(5, 0, 50, 50)];
        imageViewOne.image = [UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1考核/6.jpeg"];
        UIImageView* imageOne = [[UIImageView alloc] initWithFrame:CGRectMake(70, 60, 80, 80)];
        imageOne.image = [UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1考核/8.jpeg"];
        [self addSubview:labelOne];
        [self addSubview:imageViewOne];
        [self addSubview:imageOne];
        return self;
    } else if ([reuseIdentifier isEqualToString:@"1"]){
        UILabel* labelOne = [[UILabel alloc] initWithFrame:CGRectMake(70, 5, 200, 50)];
        labelOne.text = @"黄昏";
        labelOne.font = [UIFont systemFontOfSize:20];
        labelOne.textColor = [UIColor blackColor];
        UIImageView* imageViewOne = [[UIImageView alloc] initWithFrame:CGRectMake(5, 0, 50, 50)];
        imageViewOne.image = [UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1考核/2.jpeg"];
        UIImageView* imageOne = [[UIImageView alloc] initWithFrame:CGRectMake(70, 60, 80, 80)];
        imageOne.image = [UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1考核/12.jpeg"];
        [self addSubview:labelOne];
        [self addSubview:imageViewOne];
        [self addSubview:imageOne];
        return self;
    } else {
        UIView* view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 415, 300)];
        
        UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 415, 250)];
        imageView.image = [UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1考核/15.jpeg"];
        [view addSubview:imageView];
        UIImageView* imageViewOne = [[UIImageView alloc] initWithFrame:CGRectMake(310, 210, 80, 80)];
        imageViewOne.image = [UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1考核/6_3.jpeg"];
        [view addSubview:imageViewOne];
        [self.contentView addSubview:view];
        return self;
    }
}
@end
