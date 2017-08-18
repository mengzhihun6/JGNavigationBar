//
//  JGNormalController.m
//  JGNavBarDemo
//
//  Created by 郭军 on 2017/8/17.
//  Copyright © 2017年 ZJBL. All rights reserved.
//

#import "JGNormalController.h"
#import "JGWeiBoMineController.h"
#import "JGQQAppController.h"
#import "JGQQZoneController.h"
#import "JGZhiHuController.h"
#import "JGQQMineController.h"

#import "JGAntForestController.h"


@interface JGNormalController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation JGNormalController

#pragma mark - getter / setter
- (UITableView *)tableView
{
    if (_tableView == nil) {
        CGRect frame = CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-64-49);
        _tableView = [[UITableView alloc] initWithFrame:frame style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"常用";
    [self.view addSubview:self.tableView];
}


#pragma mark - tableview delegate / dataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                                   reuseIdentifier:nil];
    NSString *str = nil;
    switch (indexPath.row) {
        case 0:
            str = @"新浪微博个人中心";
            break;
        case 1:
            str = @"类似qq应用空间效果";
            break;
        case 2:
            str = @"类似QQ空间效果";
            break;
        case 3:
            str = @"知乎日报";
            break;
        case 4:
            str = @"QQ我的资料页";
            break;
        case 5:
            str = @"蚂蚁森林";
            break;
            
        default:
            break;
    }
    cell.textLabel.text = str;
    cell.textLabel.font = [UIFont systemFontOfSize:15];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0:
        {
            JGWeiBoMineController *weiBoMineVC = [JGWeiBoMineController new];
            [self.navigationController pushViewController:weiBoMineVC animated:YES];
        }
            break;
        case 1:
        {
            JGQQAppController *qqAppVC = [JGQQAppController new];
            [self.navigationController pushViewController:qqAppVC animated:YES];
        }
            break;
        case 2:
        {
            JGQQZoneController *qqZoneVC = [JGQQZoneController new];
            [self.navigationController pushViewController:qqZoneVC animated:YES];
        }
            break;
        case 3:
        {
            JGZhiHuController *zhiHuVC = [JGZhiHuController new];
            [self.navigationController pushViewController:zhiHuVC animated:YES];
        }
            break;
        case 4:
        {
            JGQQMineController *qqMineVC = [JGQQMineController new];
            [self.navigationController pushViewController:qqMineVC animated:YES];
        }
            break;
        case 5:
        {
            JGAntForestController *antForestVC = [JGAntForestController new];
            [self.navigationController pushViewController:antForestVC animated:YES];
        }
            break;
        default:
            break;
    }
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
