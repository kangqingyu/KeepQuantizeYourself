//
//  KQYRecordIntakePage.m
//  KeepQuantizeYourself
//
//  Created by KangQingYu on 2022/1/23.
//  Copyright © 2022 www.kangqingyu.com. All rights reserved.
//

#import "KQYRecordIntakePage.h"
#import "KQYIntakeView.h"
#import "Masonry.h"

@interface KQYRecordIntakePage ()

@property (nonatomic, strong) KQYIntakeView *intakeView;

@end

@implementation KQYRecordIntakePage

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
}

#pragma mark - Private

- (void)initUI {
    [self.view addSubview:self.intakeView];
    [self.intakeView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(50);
            make.left.right.mas_equalTo(0);
            make.height.mas_equalTo(300);
    }];
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
