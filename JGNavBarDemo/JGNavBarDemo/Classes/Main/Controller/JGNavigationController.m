//
//  JGNavigationController.m
//  JGNavBarDemo
//
//  Created by 郭军 on 2017/8/17.
//  Copyright © 2017年 ZJBL. All rights reserved.
//

#import "JGNavigationController.h"

@interface JGNavigationController ()

@end

@implementation JGNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    if (self.childViewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
