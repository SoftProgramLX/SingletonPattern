//
//  ViewController.m
//  SingletonPattern
//
//  Created by apple on 15/3/30.
//  Copyright (c) 2015年 LX. All rights reserved.
//

#import "ViewController.h"
#import "LXSingleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LXSingleton *single1 = [LXSingleton sharedLXSingleton];
    single1.userId = @"101";
    
    LXSingleton *single2 = [LXSingleton sharedLXSingleton];
    single2.userId = @"102";
    
    NSLog(@"%@", single1.userId);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
