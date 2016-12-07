//
//  ViewController.h
//  pageControl
//
//  Created by ruany on 2016/11/28.
//  Copyright © 2016年 ruany. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>
#import <objc/message.h>

@interface ViewController : UIViewController

-(void)show:(NSString*)status;

-(NSString *)getStr:(NSString *)str;

-(void)show;

@end

