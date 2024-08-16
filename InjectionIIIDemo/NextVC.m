//
//  NextVC.m
//  InjectionIIIDemo
//
//  Created by 1084-Wangcl-Mac on 2022/6/29.
//  Copyright © 2022 Charles2021. All rights reserved.
//

#import "NextVC.h"

@interface NextVC ()

@property (weak, nonatomic) IBOutlet UIButton *testButton;

@end

@implementation NextVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.testButton.hidden = NO;
    [self.testButton setTitle:@"测试显示按钮`13222`" forState:UIControlStateNormal];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(22, 200, 100, 100)];
    view.backgroundColor = UIColor.redColor;
    [self.view addSubview:view];
    
}

- (IBAction)backAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
