//
//  OBSocialHomePageModel.h
//  OBSocialUI
//
//  Created by DarrenW on 16/6/26.
//  Copyright © 2016年 oneBug. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  SocialCell的类型
 */
typedef NS_ENUM(NSInteger, OBSocialCellType) {
    /**
     *  文本类型
     */
    OBSocialCellType_Text = 0,
    /**
     *  图片类型
     */
    OBSocialCellType_Photo,
    /**
     *  链接类型
     */
    OBSocialCellType_Link,
    /**
     *  视频类型
     */
    OBSocialCellType_Video
};

@interface OBSocialModel : NSObject

@property (nonatomic, assign) OBSocialCellType type;

@property (nonatomic, copy) NSString *testText;

@end
