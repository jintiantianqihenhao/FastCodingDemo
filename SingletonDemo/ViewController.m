//
//  ViewController.m
//  SingletonDemo
//
//  Created by 沈震 on 2017/10/2.
//  Copyright © 2017年 shenzhen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [[NSUserDefaults standardUserDefaults] objectForKey:@""];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(demo) name:@"demoNoti" object:nil];
    [NSFileManager defaultManager];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
