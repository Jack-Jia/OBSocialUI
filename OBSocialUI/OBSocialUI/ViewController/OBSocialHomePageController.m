//
//  OBSocialHomePageController.m
//  OBSocialUI
//
//  Created by DarrenW on 16/6/23.
//  Copyright © 2016年 oneBug. All rights reserved.
//

#import "OBSocialHomePageController.h"
#import "OBSocialModel.h"
#import "OBSocialBaseCell.h"

@interface OBSocialHomePageController ()

@property (nonatomic, strong) NSMutableArray *dataModelList;

@end

@implementation OBSocialHomePageController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createUI];
    [self initData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - UITableViewDataSource

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    OBSocialModel *model = self.dataModelList[indexPath.row];
    OBSocialBaseCell *cell = [OBSocialBaseCell cellWithTableView:tableView type:model.type];
    cell.model = model;
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataModelList.count;
}


#pragma mark - Private Methods
- (void)createUI {
    /// 初始化导航条返回按钮
    [self ob_initNavigationGoBackButtonImage:[UIImage imageNamed:@"Nav_back"] WithTitle:nil];
    /// 初始化更多按钮
    [self ob_initNavigationRightButtonImage:[UIImage imageNamed:@"more_button"]];
    
    /// 添加tableView
    [self.view addSubview:self.baseTableView];
    
    /// 设置标题
    self.title = @"朋友圈";
}

- (void)initData {
    OBSocialModel *model1 = [self createModelWithType:OBSocialCellType_Text text:@"one"];
    OBSocialModel *model2 = [self createModelWithType:OBSocialCellType_Photo text:@"two"];
    OBSocialModel *model3 = [self createModelWithType:OBSocialCellType_Link text:@"three"];
    OBSocialModel *model4 = [self createModelWithType:OBSocialCellType_Video text:@"four"];
    [self.dataModelList addObjectsFromArray:@[model1,model2,model3,model4]];
}

///临时使用的方法
- (OBSocialModel *)createModelWithType:(OBSocialCellType)type text:(NSString *)text {
    OBSocialModel *model = [[OBSocialModel alloc] init];
    model.type = type;
    model.testText = text;
    return model;
}


#pragma mark - Getter and Setter
- (NSMutableArray *)dataModelList {
    if (!_dataModelList) {
        _dataModelList = [NSMutableArray arrayWithCapacity:5];
    }
    return _dataModelList;
}

@end
