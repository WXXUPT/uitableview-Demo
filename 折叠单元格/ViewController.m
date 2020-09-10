//
//  ViewController.m
//  折叠单元格
//
//  Created by 王旭 on 2020/9/10.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 740) style:UITableViewStyleInsetGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];

    _nameArray = [NSArray new];
    _nameArray = @[@"王旭", @"张立远", @"付子豪", @"房彤", @"仲雯", @"郭敏慧"];
//    _isShowArray = [NSArray new];
//    _isShowArray = @[@"0"];
    _isShow = NO;
    // _nameString = [[NSString alloc] initWithFormat:@"19iOS"];
    // Do any additional setup after loading the view.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (_isShow == YES) {
        return 6;
    } else {
        return 0;
    }
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    if (!cell) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    }
    cell.textLabel.text = _nameArray[indexPath.row];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 50;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *view = [[UIView alloc] init];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    
    btn.frame = CGRectMake(0, 0, 100, 50);
    [btn setTitle:@"19iOS" forState:UIControlStateNormal];
    btn.tintColor = [UIColor blackColor];
    [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:btn];

    return view;
}
- (void)pressBtn:(UIButton *)btn {
    if (_isShow == NO) {
        _isShow = YES;
    } else {
        _isShow = NO;
    }
    [_tableView reloadData];
}
@end
