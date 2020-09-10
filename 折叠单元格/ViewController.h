//
//  ViewController.h
//  折叠单元格
//
//  Created by 王旭 on 2020/9/10.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
//@property (nonatomic, copy) NSString *nameString;
@property (nonatomic, copy) NSArray *nameArray;
//@property NSArray *isShowArray;
@property (nonatomic, assign) BOOL isShow;
@end

