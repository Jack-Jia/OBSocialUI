//
//  OBBaseViewController.m
//  OBSocialUI
//
//  Created by DarrenW on 16/6/23.
//  Copyright © 2016年 oneBug. All rights reserved.
//

#import "OBBaseViewController.h"

@interface OBBaseViewController ()

@end

@implementation OBBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Public Methods
/**
 *  初始化导航条的返回按钮
 *
 *  @param image 返回按钮的image
 *  @param title 返回按钮的标题
 */
- (void)ob_initNavigationGoBackButtonImage:(UIImage *)image WithTitle:(NSString *)title {
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(goBackButtonClicked:)];
    self.navigationItem.leftBarButtonItem = backButton;
    [self.navigationItem.leftBarButtonItem setTitle:title];

}
/**
 *  返回按钮的响应事件,如需定制返回事件,重写此方法
 *
 *  @param sender 返回按钮
 */
- (void)goBackButtonClicked:(UIBarButtonItem *)sender {
    
    //子类重写
    
}

/**
 *  初始化导航条的右侧按钮
 *
 *  @param image 返回按钮的image
 *  @param title 返回按钮的标题
 */
- (void)ob_initNavigationRightButtonImage:(UIImage *)image {
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(rightButtonClicked:)];
    self.navigationItem.rightBarButtonItem = rightButton;
}

/**
 *  右侧按钮的响应事件,如需定制返回事件,重写此方法
 *
 *  @param sender 返回按钮
 */
- (void)rightButtonClicked:(UIBarButtonItem *)sender {
    
    //子类重写
    
}


@end






























