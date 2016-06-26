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

#pragma mark - Private Methods
- (void)createUI {
    /// 初始化导航条返回按钮
    [self ob_initNavigationGoBackButtonImage:[UIImage imageNamed:@"Nav_back"] WithTitle:nil];
    /// 初始化更多按钮
    [self ob_initNavigationRightButtonImage:[UIImage imageNamed:@"more_button"]];
}

@end
