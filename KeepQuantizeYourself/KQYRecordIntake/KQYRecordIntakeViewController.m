//
//  KQYRecordIntakeViewController.m
//  KeepQuantizeYourself
//
//  Created by KangQingYu on 2022/2/27.
//  Copyright © 2022 www.kangqingyu.com. All rights reserved.
//

#import "KQYRecordIntakeViewController.h"
#import "KQYStatisticalViewController.h"
#import "KQYUtil.h"
#import "KQYIntakeView.h"

@interface KQYRecordIntakeViewController ()

@property (nonatomic, strong) UIButton *viewStaticButton;
@property (nonatomic, strong) KQYIntakeView *intakeView;

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
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self initUI];
}

- (void)initUI {
    [self.view addSubview:self.viewStaticButton];
    [self.viewStaticButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(93);
            make.left.mas_equalTo(30);
    }];
    
    [self.view addSubview:self.intakeView];
    [self.intakeView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(50);
            make.left.right.mas_equalTo(0);
            make.height.mas_equalTo(300);
    }];
}

- (void)viewStaticTouchUpInside {
    KQYStatisticalViewController *staticVC = [[KQYStatisticalViewController alloc] init];
    [self.navigationController pushViewController:staticVC animated:YES];
}

#pragma mark - Property

- (KQYIntakeView *)intakeView {
    if (!_intakeView) {
        _intakeView = [[KQYIntakeView alloc] init];
    }
    return _intakeView;
}

- (UIButton *)viewStaticButton {
    if (!_viewStaticButton) {
        _viewStaticButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_viewStaticButton setTitle:@"查看近一周数据统计" forState:UIControlStateNormal];
        [_viewStaticButton setTitleColor:KQYHEX_1(@"999999") forState:UIControlStateNormal];
        _viewStaticButton.titleLabel.font = KQYFONT_1(12);
        SEL selector = @selector(viewStaticTouchUpInside);
        [_viewStaticButton addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    }
    return _viewStaticButton;
}

@end
