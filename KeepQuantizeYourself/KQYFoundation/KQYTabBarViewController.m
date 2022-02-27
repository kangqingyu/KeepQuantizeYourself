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

@interface KQYTabBarViewController ()

@end

@implementation KQYTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor purpleColor];
    
    KQYPersonCenterViewController *personCenterVC = [[KQYPersonCenterViewController alloc] init];
    
    KQYRecordIntakeViewController *recordIntakeVC = [[KQYRecordIntakeViewController alloc] init];
    
    [self addChildViewController:personCenterVC];
    [self addChildViewController:recordIntakeVC];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
