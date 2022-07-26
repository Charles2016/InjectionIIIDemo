//
//  UIViewController+InjectionIII.m
//  NewProject
//
//  Created by 1084-Wangcl-Mac on 2022/6/27.
//  Copyright © 2022 Charles. All rights reserved.
//

#import "UIViewController+InjectionIII.h"
#import <objc/runtime.h>
#import <objc/message.h>

@implementation UIViewController (InjectionIII)

//InjectionIII调试代码
#if DEBUG
/**
 InjectionIII 热部署会调用的一个方法，
 runtime给VC绑定上之后，每次部署完就重新viewDidLoad
 */
void injected (id self, SEL _cmd) {
    //重新加载view
    [self loadView];
    [self viewDidLoad];
    [self viewWillLayoutSubviews];
    [self viewWillAppear:YES];
    [self viewDidDisappear:YES];

}

+ (void)load {
    //注册项目启动监听
    __block id observer =
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification object:nil queue:nil usingBlock:^(NSNotification * _Nonnull note) {
        //更改bundlePath
        [[NSBundle bundleWithPath:@"/Applications/InjectionIII.app/Contents/Resources/iOSInjection.bundle"] load];
        [[NSNotificationCenter defaultCenter] removeObserver:observer];
    }];
    //给UIViewController 注册injected 方法
    class_addMethod([UIViewController class], NSSelectorFromString(@"injected"), (IMP)injected, "v@:");
}
#endif

@end
