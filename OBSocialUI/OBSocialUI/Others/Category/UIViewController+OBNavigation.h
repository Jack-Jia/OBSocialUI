//
//  UIViewController+OBNavigation.h
//  OBSocialUI
//
//  Created by DarrenW on 16/6/26.
//  Copyright © 2016年 oneBug. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (OBNavigation)
/**
 *  初始化导航条的返回按钮
 *
 *  @param image 返回按钮的image
 *  @param title 返回按钮的标题
 */
- (void)ob_initNavigationGoBackButtonImage:(UIImage *)image WithTitle:(NSString *)title;

/**
 *  返回按钮的响应事件,如需定制返回事件,重写此方法
 *
 *  @param sender 返回按钮
 */
- (void)goBackButtonClicked:(UIBarButtonItem *)sender;


/**
 *  初始化导航条的右侧按钮
 *
 *  @param image 返回按钮的image
 *  @param title 返回按钮的标题
 */
- (void)ob_initNavigationRightButtonImage:(UIImage *)image;

/**
 *  右侧按钮的响应事件,如需定制返回事件,重写此方法
 *
 *  @param sender 返回按钮
 */
- (void)rightButtonClicked:(UIBarButtonItem *)sender;

@end
