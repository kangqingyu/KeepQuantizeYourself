//
//  KQYIntakeTableViewCell.m
//  KeepQuantizeYourself
//
//  Created by KangQingYu on 2022/1/23.
//  Copyright © 2022 www.kangqingyu.com. All rights reserved.
//

#import "KQYIntakeTableViewCell.h"
#import "Masonry.h"

@interface KQYIntakeTableViewCell ()

@property (nonatomic, strong) UIButton *foodNameButton;
@property (nonatomic, strong) UITextField *intakeCountTextField;

@end

@implementation KQYIntakeTableViewCell

#pragma mark - Private

- (void)initUI {
    [self.contentView addSubview:self.foodNameButton];
    [self.foodNameButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(1);
            make.centerY.mas_equalTo(0);
            make.width.mas_equalTo(90);
    }];
    
    [self.contentView addSubview:self.intakeCountTextField];
    [self.intakeCountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.foodNameButton.mas_right).offset(10);
            make.centerY.mas_equalTo(0);
            make.width.mas_equalTo(100);
            make.right.mas_lessThanOrEqualTo(0);
    }];
}

#pragma mark - Action

- (void)foodNameBtnTouchUpInside {
    
}

#pragma mark - Property

- (UIButton *)foodNameButton {
    if (!_foodNameButton) {
        _foodNameButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_foodNameButton setTitle:@"摄入食物" forState:UIControlStateNormal];
        [_foodNameButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _foodNameButton.titleLabel.font = [UIFont systemFontOfSize:12];
        SEL selector = @selector(foodNameBtnTouchUpInside);
        [_foodNameButton addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    }
    return _foodNameButton;
}


- (UITextField *)intakeCountTextField {
    if (!_intakeCountTextField) {
        _intakeCountTextField = [[UITextField alloc] initWithFrame:CGRectZero];
    }
    return _intakeCountTextField;
}

@end
