//
//  ViewController.m
//  FSDeviceSample
//
//  Created by fudongdong on 2018/12/7.
//  Copyright © 2018年 fudongdong. All rights reserved.
//

#import "ViewController.h"
#import "FSDevice.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [NSTimer scheduledTimerWithTimeInterval:3 repeats:YES block:^(NSTimer * _Nonnull timer) {
        [self show];
    }];
}

- (void)show{
//    NSLog(@"已用内存：%f M",[FSDevice appUsedMemory] / (1024 * 1024));
//    NSLog(@"可用内存：%f M\n\n",[FSDevice availableMemory] / (1024 * 1024));
    
    struct tm *t = FSDevice.currentTime;
    NSLog(@"时间：%d-%d-%d %d:%d:%d\n\n",t->tm_year,t->tm_mon,t->tm_mday,t->tm_hour,t->tm_min,t->tm_sec);
}


@end
