//
//  OBBaseViewController.m
//  OBSocialUI
//
//  Created by DarrenW on 16/6/23.
//  Copyright © 2016年 oneBug. All rights reserved.
//

#import "OBBaseViewController.h"

@interface OBBaseViewController ()

@property (nonatomic, assign) UITableViewStyle tableViewStyle;

@end

@implementation OBBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Public Methods
/**
 *  设置tableView为组模式
 */
- (void)isGroupTableView {
    self.tableViewStyle = UITableViewStyleGrouped;
}

#pragma mark - UITableViewDataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

#pragma mark - Getter and Setter
- (UITableView *)baseTableView {
    if (!_baseTableView) {
        _baseTableView = [[UITableView alloc] initWithFrame:self.view.frame style:self.tableViewStyle?:UITableViewStylePlain];
        _baseTableView.delegate = self;
        _baseTableView.dataSource = self;
    }
    return _baseTableView;
}


@end






























