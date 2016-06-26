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
    [self ob_initNavigationGoBackButtonImage:[UIImage imageNamed:@"Nav_back"] WithTitle:nil];
    [self ob_initNavigationRightButtonImage:[UIImage imageNamed:@"more_button"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
