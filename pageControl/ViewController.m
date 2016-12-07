//
//  ViewController.m
//  pageControl
//
//  Created by ruany on 2016/11/28.
//  Copyright © 2016年 ruany. All rights reserved.
//
#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height

static void *FYObjProKey = @"FYObjProKey";

#import "ViewController.h"

#import "RYPageControl.h"
#import "Person.h"
@interface ViewController ()

@property(nonatomic,strong)RYPageControl * pc;

@property(nonatomic,strong)UIPageControl * pageControl;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor darkGrayColor];
    [self pageC];
    [self ryPageC];
    [self runTime];
    
    
    
}
-(void)runTime{
//    runtime案例1
    //    NSString * str=[NSArray arrayWithObject:@"1"];
    //    NSLog(@"%ld",str.length);
//    runtime案例2
    //    [self show];
//    runtime案例3
    NSObject * obj=[[NSObject alloc]init];
    NSString * str=@"runtime添加变量";
//    系统类 NSObject，通过 objc_setAssociatedObject 这个方法，绑定了一个新的变量
    objc_setAssociatedObject(obj, &FYObjProKey, str, OBJC_ASSOCIATION_COPY);
    id objVlaue=objc_getAssociatedObject(obj, &FYObjProKey);
    
    NSString * getStr=(NSString *)objVlaue;
    NSLog(@"%@",getStr);
    
//    runtime案例4
    Person * p=[[Person alloc]init];
    [p eat];
    
//    objc_msgSend(p,@selector(eat));
    
    [Person eat];
    [[Person class] eat];
//    objc_msgSend([Person class],@selector(eat));
}
-(void)pageC{
    //系统
    _pageControl = [[UIPageControl alloc]initWithFrame:CGRectMake(0,400,ScreenWidth,15*ScreenWidth/375)];
    [_pageControl setTransform:CGAffineTransformMakeScale(0.5, 0.5)];
    [_pageControl setCurrentPage:0];
    [_pageControl setNumberOfPages:5];
    _pageControl.backgroundColor=[UIColor clearColor];
    [_pageControl setCurrentPageIndicatorTintColor:[UIColor grayColor]];
    [_pageControl setPageIndicatorTintColor:[UIColor lightGrayColor]];
    [self.view addSubview:_pageControl];
}
-(void)ryPageC{
    //重写pageControl方法
    _pc=[[RYPageControl alloc]initWithFrame:CGRectMake(0,150, ScreenWidth,15*ScreenWidth/375)currentColor:[UIColor colorWithRed:216/255.0 green:216/255.0 blue:216/255.0 alpha:1] nextColor:[UIColor colorWithRed:216/255.0 green:216/255.0 blue:216/255.0 alpha:0.33] rsize:10];
    [_pc setBackgroundColor:[UIColor clearColor]];
    _pc.userInteractionEnabled=NO;
    [_pc setCurrentPage:0];
    [_pc setNumberOfPages:5];
    
    [self.view addSubview:_pc];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    return [self show:nil];
}

-(NSString *)getStr:(NSString *)str{

    return str;
}


-(void)show:(NSString *)status{
    if (status) {
        NSLog(@"%@",status);
    }else{
        NSLog(@"base");
    }
   
};
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
