//
//  OBSocialBaseCell.m
//  OBSocialUI
//
//  Created by DarrenW on 16/6/26.
//  Copyright © 2016年 oneBug. All rights reserved.
//

#import "OBSocialBaseCell.h"
#import "OBSocialTextCell.h"
#import "OBSocialPhotoCell.h"
#import "OBSocialLinkCell.h"
#import "OBSocialVideoCell.h"

@interface OBSocialBaseCell ()

@end

@implementation OBSocialBaseCell

/**
 *  根据类型选择初始化的cell
 *
 *  @param tableView 所属的cell
 *  @param type      cell的类型
 *
 *  @return 初始化完成之后的cell
 */
+ (instancetype)cellWithTableView:(UITableView *)tableView type:(OBSocialCellType)type {
    
    OBSocialBaseCell *cell;
    
    switch (type) {
        case OBSocialCellType_Text: {
            cell = [OBSocialTextCell cellWithTableView:tableView];
        }
            break;
        case OBSocialCellType_Photo: {
            cell = [OBSocialPhotoCell cellWithTableView:tableView];
        }
            break;
        case OBSocialCellType_Link: {
            cell = [OBSocialLinkCell cellWithTableView:tableView];
        }
            break;
        case OBSocialCellType_Video: {
            cell = [OBSocialVideoCell cellWithTableView:tableView];
        }
            break;
        default: {
            cell = [[OBSocialBaseCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"baseCell"];
        }
            break;
    }
    
    return cell;
    
}

/**
 *  子类重写
 *
 *  @param tableView 所属tableView
 *
 *  @return 实例化的子类
 */
+ (instancetype)cellWithTableView:(UITableView *)tableView {
    return nil;
}

/**
 *  子类重写
 *
 *  @param model 数据模型
 */
- (void)setModel:(OBSocialModel *)model {
    
}

@end

















