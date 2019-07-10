//
//  BaseTableViewController.h
//  OutWork
//
//  Created by ZZHT on 2018/5/18.
//  Copyright © 2018年 ZZHT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Z3BaseViewController.h"
#import "UIScrollView+EmptyDataSet.h"

@interface Z3BaseTableViewController : Z3BaseViewController<UITableViewDataSource,UITableViewDelegate,DZNEmptyDataSetSource,DZNEmptyDataSetDelegate>
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,copy) NSArray *dataSource;
- (void)initTableView;
@end
