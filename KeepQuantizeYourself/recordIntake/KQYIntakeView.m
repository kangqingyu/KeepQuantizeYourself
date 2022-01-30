//
//  KQYIntakeView.m
//  KeepQuantizeYourself
//
//  Created by KangQingYu on 2022/1/23.
//  Copyright © 2022 www.kangqingyu.com. All rights reserved.
//

#import "KQYIntakeView.h"
#import "KQYIntakeTableViewCell.h"
#import "Masonry.h"

@interface KQYIntakeView () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;


@end

@implementation KQYIntakeView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initUI];
    }
    return self;
}


- (void)initUI {
    [self addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.right.mas_equalTo(0);
    }];
}

#pragma mark - UITableViewDelegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    KQYIntakeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([KQYIntakeTableViewCell class]) forIndexPath:indexPath];
    if (!cell) {
        cell = [[KQYIntakeTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass([KQYIntakeTableViewCell class])];
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

}

#pragma mark - Property

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _tableView;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
