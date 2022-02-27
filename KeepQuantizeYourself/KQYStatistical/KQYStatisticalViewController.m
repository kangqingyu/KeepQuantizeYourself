//
//  KQYStatisticalViewController.m
//  KeepQuantizeYourself
//
//  Created by KangQingYu on 2022/2/23.
//  Copyright © 2022 www.kangqingyu.com. All rights reserved.
//

#import "KQYStatisticalViewController.h"
#import "KQYStatisticalViewModel.h"
    
@interface KQYStatisticalViewController ()

@property (nonatomic, strong) KQYStatisticalViewModel *viewModel;

@end

@implementation KQYStatisticalViewController

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
    self.view.backgroundColor = [UIColor orangeColor];
}
 

- (KQYStatisticalViewModel *)viewModel {
    if (!_viewModel) {
        _viewModel = [[KQYStatisticalViewModel alloc] init];
    }
    return _viewModel;
}

@end
