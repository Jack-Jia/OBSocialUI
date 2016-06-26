//
//  OBSocialPhotoCell.m
//  OBSocialUI
//
//  Created by DarrenW on 16/6/26.
//  Copyright © 2016年 oneBug. All rights reserved.
//

#import "OBSocialPhotoCell.h"

@implementation OBSocialPhotoCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    static NSString *ID = @"OBSocialPhotoCell";
    OBSocialPhotoCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        UINib * nib = [UINib nibWithNibName:@"OBSocialPhotoCell" bundle:nil];
        [tableView registerNib:nib forCellReuseIdentifier:ID];
        cell = [[nib instantiateWithOwner:self options:nil] lastObject];
    }
    return cell;
}

///填写数据
- (void)setModel:(OBSocialModel *)model {
    [super setModel:model];
}

@end
