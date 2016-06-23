//
//  ViewController.m
//  OBSocialUI
//
//  Created by DarrenW on 16/6/23.
//  Copyright © 2016年 oneBug. All rights reserved.
//  朋友圈的入口类,

#import "ViewController.h"
#import "OBSocialHomePageController.h"


@interface ViewController ()

@property (nonatomic, strong) UIButton *socialButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.socialButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)socialButtonClicked:(UIButton *)sender {
    OBSocialHomePageController *socialHomePageController = [[OBSocialHomePageController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:socialHomePageController];
    [self presentViewController:nav animated:YES completion:nil];
}


- (UIButton *)socialButton {
    if (!_socialButton) {
        _socialButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _socialButton.frame = CGRectMake(0, 0, 100, 100);
        _socialButton.layer.cornerRadius = 100/2;
        _socialButton.backgroundColor = [UIColor colorWithWhite:0.5 alpha:0.5];
        [_socialButton setTitle:@"朋友圈" forState:UIControlStateNormal];
        _socialButton.center = self.view.center;
        [_socialButton addTarget:self action:@selector(socialButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _socialButton;
}

@end
