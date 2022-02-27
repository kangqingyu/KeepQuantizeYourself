//
//  KQYPersonCenterViewController.m
//  KeepQuantizeYourself
//
//  Created by KangQingYu on 2022/2/23.
//  Copyright © 2022 www.kangqingyu.com. All rights reserved.
//

#import "KQYPersonCenterViewController.h"
#import "KQYPersonCenterViewModel.h"

@interface KQYPersonCenterViewController ()

@property (nonatomic, strong) KQYPersonCenterViewModel *viewModel;


@end

@implementation KQYPersonCenterViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        self.tabBarItem.title = @"个人中心";
        self.tabBarItem.image = [UIImage imageNamed:@"praise"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
}

 
- (KQYPersonCenterViewModel *)viewModel {
    if (!_viewModel) {
        _viewModel = [[KQYPersonCenterViewModel alloc] init];
    }
    return _viewModel;
}

@end
