//
//  KQYTabBarViewController.m
//  KeepQuantizeYourself
//
//  Created by KangQingYu on 2022/2/27.
//  Copyright © 2022 www.kangqingyu.com. All rights reserved.
//

#import "KQYTabBarViewController.h"
#import "KQYPersonCenterViewController.h"
#import "KQYRecordIntakeViewController.h"
#import "KQYStatisticalViewController.h"

@interface KQYTabBarViewController ()

@end

@implementation KQYTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    KQYRecordIntakeViewController *recordIntakeVC = [[KQYRecordIntakeViewController alloc] init];

    KQYPersonCenterViewController *personCenterVC = [[KQYPersonCenterViewController alloc] init];
    KQYStatisticalViewController *staticVC = [[KQYStatisticalViewController alloc] init];
    
    
    [self addChildViewController:recordIntakeVC];
    [self addChildViewController:staticVC];
    [self addChildViewController:personCenterVC];
}
 

@end
