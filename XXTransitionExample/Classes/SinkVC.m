//
//  SinkVC.m
//  XXNavigation
//
//  Created by xunxu on 16/10/10.
//  Copyright © 2016年 许洵. All rights reserved.
//

#import "SinkVC.h"
#import "FragmentVC.h"
#import "XXMacro.h"
@interface SinkVC ()

@end

@implementation SinkVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    self.title = @"sink效果，全屏手势";
    
    UIButton *pushBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, 100, 44)];
    [pushBtn setTitle:@"push" forState:UIControlStateNormal];
    [pushBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [pushBtn addTarget:self action:@selector(pushAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pushAction {
    FragmentVC *ctrler = [[FragmentVC alloc] init];
    [self.navigationController pushViewController:ctrler animated:YES];
}

- (void)dealloc {
    XXLog(@"%@--销毁",self);
}

@end
