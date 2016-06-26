//
//  OBSocialBaseCell.h
//  OBSocialUI
//
//  Created by DarrenW on 16/6/26.
//  Copyright © 2016年 oneBug. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OBSocialModel.h"

@interface OBSocialBaseCell : UITableViewCell

@property (nonatomic, strong) OBSocialModel *model; //!< 朋友圈数据模型

/**
 *  根据类型选择初始化的cell
 *
 *  @param tableView 所属的cell
 *  @param type      cell的类型
 *
 *  @return 初始化完成之后的cell
 */
+ (instancetype)cellWithTableView:(UITableView *)tableView type:(OBSocialCellType)type;

/**
 *  子类初始化方法
 *
 *  @param tableView 所属的tableView
 *
 *  @return 初始化完成的Cell
 */
+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
