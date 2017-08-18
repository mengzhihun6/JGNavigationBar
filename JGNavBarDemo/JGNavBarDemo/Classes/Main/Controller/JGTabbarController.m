//
//  JGTabbarController.m
//  JGNavBarDemo
//
//  Created by 郭军 on 2017/8/17.
//  Copyright © 2017年 ZJBL. All rights reserved.
//

#import "JGTabbarController.h"

#import "JGNavigationController.h"
#import "JGNormalController.h"
#import "JGCustomController.h"
#import "JGMoveController.h"

#import "WRNavigationBar.h"

UIColor *MainNavBarColor = nil;
UIColor *MainViewColor = nil;

@interface JGTabbarController ()

@end

@implementation JGTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建子控制器
    [self setUpChildViewControllers];
    
    [self setNavBarAppearence];
}

/**
 *  创建子控制器123
 
 */
- (void)setUpChildViewControllers {
    
    [self setupChildVc:[[JGNormalController alloc] init] title:@"常用" image:@"Customer_normal"  selectedImage:@"Customer_selected"];
    
    [self setupChildVc:[[JGCustomController alloc] init] title:@"自定义导航栏" image:@"Scheduling_normal"  selectedImage:@"Scheduling_selected"];
    
    [self setupChildVc:[[JGMoveController alloc] init] title:@"移动导航栏" image:@"Logistics_normal" selectedImage:@"Logistics_selected"];
}

/**
 *  初始化控制器
 *
 *  @param vc            控制器
 *  @param title         标题
 *  @param image         图片
 *  @param selectedImage 选中图片
 */
- (void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage {
    
    //    vc.tabBarItem.title = title;
    vc.title = title;
    
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //54,180,190
    [vc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:54/255.0 green:180/255.0 blue:190/255.0 alpha:1]} forState:UIControlStateSelected];
    
    
    //包装一个导航控制器
    JGNavigationController *nav = [[JGNavigationController alloc] initWithRootViewController:vc];
    //隐藏tabbar
    [self addChildViewController:nav];
}


- (void)setNavBarAppearence
{
    MainNavBarColor = [UIColor colorWithRed:0/255.0 green:175/255.0 blue:240/255.0 alpha:1];
    MainViewColor   = [UIColor colorWithRed:126/255.0 green:126/255.0 blue:126/255.0 alpha:1];
    
    // 设置导航栏默认的背景颜色
    [UIColor wr_setDefaultNavBarBarTintColor:MainNavBarColor];
    // 设置导航栏所有按钮的默认颜色
    [UIColor wr_setDefaultNavBarTintColor:[UIColor whiteColor]];
    // 设置导航栏标题默认颜色
    [UIColor wr_setDefaultNavBarTitleColor:[UIColor whiteColor]];
    // 统一设置状态栏样式
    [UIColor wr_setDefaultStatusBarStyle:UIStatusBarStyleLightContent];
    // 如果需要设置导航栏底部分割线隐藏，可以在这里统一设置
    // [UIColor wr_setDefaultNavBarShadowImageHidden:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
