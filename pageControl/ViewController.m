//
//  ViewController.m
//  pageControl
//
//  Created by ruany on 2016/11/28.
//  Copyright © 2016年 ruany. All rights reserved.
//
#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height

#import "ViewController.h"

#import "RYPageControl.h"

@interface ViewController ()

@property(nonatomic,strong)RYPageControl * pc;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //重写pageControl方法
    _pc=[[RYPageControl alloc]initWithFrame:CGRectMake(0,150, ScreenWidth,15*ScreenWidth/375)currentColor:[UIColor colorWithRed:216/255.0 green:216/255.0 blue:216/255.0 alpha:1] nextColor:[UIColor colorWithRed:216/255.0 green:216/255.0 blue:216/255.0 alpha:0.33] rsize:15];
    [_pc setBackgroundColor:[UIColor clearColor]];
    [_pc setNumberOfPages:5];
    [_pc setCurrentPage:0];
    [self.view addSubview:_pc];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
