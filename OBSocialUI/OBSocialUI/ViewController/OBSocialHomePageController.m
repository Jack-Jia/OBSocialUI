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
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
