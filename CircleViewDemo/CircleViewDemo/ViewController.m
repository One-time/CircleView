//
//  ViewController.m
//  CircleViewDemo
//
//  Created by Jack on 16/3/14.
//  Copyright © 2016年 Jack. All rights reserved.
//

#import "ViewController.h"
#import "CircleView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CircleView *circle = [[CircleView alloc]initWithFrame:CGRectMake(0, 44, 100, 100)];
    [circle setPaused:NO];
    [self.view addSubview:circle];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
