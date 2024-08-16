//
//  SuperVC.m
//  InjectionIIIDemo
//
//  Created by 1084-Wangcl-Mac on 2022/6/29.
//  Copyright © 2022 Charles2021. All rights reserved.
//

#import "SuperVC.h"

@interface SuperVC ()

@end

@implementation SuperVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
}

#if DEBUG
//InjectionIII调试响应方法
- (void)injected {
    //重新加载view
    [self loadView];
    [self viewDidLoad];
    [self viewWillLayoutSubviews];
    [self viewWillAppear:YES];
    [self viewDidDisappear:YES];
}
#endif

@end
