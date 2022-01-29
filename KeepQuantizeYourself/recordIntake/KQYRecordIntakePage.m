//
//  KQYRecordIntakePage.m
//  KeepQuantizeYourself
//
//  Created by KangQingYu on 2022/1/23.
//  Copyright © 2022 www.kangqingyu.com. All rights reserved.
//

#import "KQYRecordIntakePage.h"
#import "KQYIntakeView.h"

@interface KQYRecordIntakePage ()

@property (nonatomic, strong) KQYIntakeView *intakeView;

@end

@implementation KQYRecordIntakePage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


#pragma mark - Property

- (KQYIntakeView *)intakeView {
    if (!_intakeView) {
        _intakeView = [[KQYIntakeView alloc] init];
    }
    return _intakeView;
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
