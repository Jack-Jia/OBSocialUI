//
//  OBSocialLinkCell.m
//  OBSocialUI
//
//  Created by DarrenW on 16/6/26.
//  Copyright © 2016年 oneBug. All rights reserved.
//

#import "OBSocialLinkCell.h"

@interface OBSocialLinkCell ()
@property (weak, nonatomic) IBOutlet UILabel *testLabel;

@end

@implementation OBSocialLinkCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    static NSString *ID = @"OBSocialLinkCell";
    OBSocialLinkCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        UINib * nib = [UINib nibWithNibName:@"OBSocialLinkCell" bundle:nil];
        [tableView registerNib:nib forCellReuseIdentifier:ID];
        cell = [[nib instantiateWithOwner:self options:nil] lastObject];
    }
    return cell;
}

///填写数据
- (void)setModel:(OBSocialModel *)model {
    [super setModel:model];
    self.testLabel.text = model.testText;

}
@end
