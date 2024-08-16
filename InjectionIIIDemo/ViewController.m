//
//  ViewController.m
//  InjectionIIIDemo
//
//  Created by 1084-Wangcl-Mac on 2022/6/29.
//  Copyright © 2022 Charles2021. All rights reserved.
//

#import "ViewController.h"
#import "NextVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(20, 80 + 60, self.view.frame.size.width - 40, 40);
    button.tag = 20202203;
    button.titleLabel.font = [UIFont systemFontOfSize:13];
    [button setTitleColor:UIColor.blueColor forState:UIControlStateNormal];
    [button setTitle:@"下一页ak1002g" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(100, 300, 100, 100)];
    view.backgroundColor = UIColor.blueColor;
    [self.view addSubview:view];
}

#pragma mark - buttonActions
- (void)buttonAction:(UIButton *)button {
    NextVC *VC = [[NextVC alloc]init];
    VC.modalPresentationStyle = UIModalPresentationOverFullScreen;
    [self presentViewController:VC animated:YES completion:nil];
}

@end
