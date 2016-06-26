//
//  OBBaseViewController.h
//  OBSocialUI
//
//  Created by DarrenW on 16/6/23.
//  Copyright © 2016年 oneBug. All rights reserved.
//  朋友圈所有控制器的父类

#import <UIKit/UIKit.h>

@interface OBBaseViewController : UIViewController
<
UITableViewDelegate,
UITableViewDataSource
>

@property (nonatomic, strong) UITableView *baseTableView; //!< 基础TableView

/**
 *  设置tableView为组模式
 */
- (void)isGroupTableView;

@end
