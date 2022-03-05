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
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *subTitleLabel;

@end


@implementation KQYIntakeTableViewCell

#pragma mark - Lifecycle

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initUI];
    }
    return self;
}

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
    
    [self.contentView addSubview:self.titleLabel];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.intakeCountTextField.mas_right);
            make.centerY.mas_equalTo(0);
            
    }];
    
    [self.contentView addSubview:self.subTitleLabel];
    [self.subTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.titleLabel.mas_right);
            make.centerY.mas_equalTo(self.titleLabel);
            make.right.mas_equalTo(0);
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

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
//        _titleLabel.font = kqyfo(12);
//        _titleLabel.textColor =  HEX(@"999999");
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.numberOfLines = 1;
    }
    return _titleLabel;
}

- (UILabel *)subTitleLabel {
    if (!_subTitleLabel) {
        _subTitleLabel = [[UILabel alloc] init];
//        _subTitleLabel.font =  FONT(12);
//        _subTitleLabel.textColor =  EX(@"999999");
        _subTitleLabel.textAlignment = NSTextAlignmentLeft;
        _subTitleLabel.numberOfLines = 1;
    }
    return _subTitleLabel;
}

@end
