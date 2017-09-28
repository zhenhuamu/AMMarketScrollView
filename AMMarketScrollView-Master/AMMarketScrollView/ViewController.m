//
//  ViewController.m
//  AMMarketScrollView
//
//  Created by AndyMu on 2017/9/27.
//  Copyright © 2017年 AndyMu. All rights reserved.
//

#import "ViewController.h"
#import "AMMarketScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AMMarketScrollView *scrollView = [[AMMarketScrollView alloc]initWithFrame:CGRectMake(50, 100, CGRectGetWidth(self.view.frame)-100, 50)];
    scrollView.marketConfigation = [AMMarketConfigation defaultConfiguration];
    [scrollView startWithCloseHandler:^(NSNumber * _Nullable currentTime) {
        
    } clickHandler:^(NSNumber * _Nullable index) {
        
    }];
    [self.view addSubview:scrollView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
