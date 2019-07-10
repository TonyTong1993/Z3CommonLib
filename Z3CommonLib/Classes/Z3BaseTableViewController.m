//
//  BaseTableViewController.m
//  OutWork
//
//  Created by ZZHT on 2018/5/18.
//  Copyright © 2018年 ZZHT. All rights reserved.
//

#import "Z3BaseTableViewController.h"
#import "UIColor+Z3.h"
#import "Z3Theme.h"
#import "Masonry.h"
@interface Z3BaseTableViewController ()

@end

@implementation Z3BaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initTableView];
}

- (void)initTableView {
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    tableView.tableFooterView = [UIView new];
    tableView.dataSource = self;
    tableView.delegate = self;
    tableView.emptyDataSetSource = self;
    tableView.emptyDataSetDelegate = self;
    tableView.backgroundColor = [UIColor colorWithHex:@"#f4f5f7"];;
    [self.view addSubview:tableView];
    self.tableView = tableView;
    if (@available(iOS 11.0, *)) {
        self.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        self.tableView.estimatedRowHeight = 0.0f;
        self.tableView.estimatedSectionFooterHeight = 0.0f;
        self.tableView.estimatedSectionHeaderHeight = 0.0f;
    } else {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    [self layoutConstraints];
}

- (void)layoutConstraints {
    
    [self.tableView mas_updateConstraints:^(MASConstraintMaker *make) {
        if (@available(iOS 11.0, *)) {
            make.top.mas_equalTo(self.view.mas_safeAreaLayoutGuideTop);
            make.bottom.mas_equalTo(self.view.mas_safeAreaLayoutGuideBottom);
        } else {
            make.top.mas_equalTo(self.view.mas_top).offset(64.0f);
            make.bottom.mas_equalTo(self.view.mas_bottom);
        }
        make.left.right.mas_equalTo(self.view);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

- (NSAttributedString *)titleForEmptyDataSet:(UIScrollView *)scrollView {
    NSAttributedString *astr = [[NSAttributedString alloc] initWithString:NSLocalizedString(@"str_empty_data","暂无数据")];
    return astr;
}

@end
