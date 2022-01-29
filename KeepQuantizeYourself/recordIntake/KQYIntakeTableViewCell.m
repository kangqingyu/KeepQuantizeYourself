//
//  KQYIntakeTableViewCell.m
//  KeepQuantizeYourself
//
//  Created by KangQingYu on 2022/1/23.
//  Copyright © 2022 www.kangqingyu.com. All rights reserved.
//

#import "KQYIntakeTableViewCell.h"

@interface KQYIntakeTableViewCell ()

@property (nonatomic, strong) UIButton *foodNameButton;
@property (nonatomic, strong) UITextField *intakeCountTextField;

@end

@implementation KQYIntakeTableViewCell

- (void)foodNameBtnTouchUpInside {
    
}

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
