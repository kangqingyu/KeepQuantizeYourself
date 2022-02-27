//
//  KQYRecordIntakeViewController.m
//  KeepQuantizeYourself
//
//  Created by KangQingYu on 2022/2/27.
//  Copyright © 2022 www.kangqingyu.com. All rights reserved.
//

#import "KQYRecordIntakeViewController.h"

@interface KQYRecordIntakeViewController ()

@end

@implementation KQYRecordIntakeViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        self.tabBarItem.title = @"记录";
        self.tabBarItem.image = [UIImage imageNamed:@"share"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
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
