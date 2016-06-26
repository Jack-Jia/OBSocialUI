//
//  OBSocialHomePageController.m
//  OBSocialUI
//
//  Created by DarrenW on 16/6/23.
//  Copyright © 2016年 oneBug. All rights reserved.
//

#import "OBSocialHomePageController.h"

@interface OBSocialHomePageController ()

@end

@implementation OBSocialHomePageController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - UITableViewDataSource

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}


#pragma mark - Private Methods
- (void)createUI {
    /// 初始化导航条返回按钮
    [self ob_initNavigationGoBackButtonImage:[UIImage imageNamed:@"Nav_back"] WithTitle:nil];
    /// 初始化更多按钮
    [self ob_initNavigationRightButtonImage:[UIImage imageNamed:@"more_button"]];
    
    /// 添加tableView
    [self.view addSubview:self.baseTableView];
    
    /// 设置标题
    self.title = @"朋友圈";
}

@end
