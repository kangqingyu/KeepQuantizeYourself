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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (KQYStatisticalViewModel *)viewModel {
    if (!_viewModel) {
        _viewModel = [[KQYStatisticalViewModel alloc] init];
    }
    return _viewModel;
}

@end
