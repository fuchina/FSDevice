//
//  FSDevice.h
//  FSDeviceSample
//
//  Created by fudongdong on 2018/12/7.
//  Copyright © 2018年 fudongdong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sys/sysctl.h>
#import <mach/mach.h>

NS_ASSUME_NONNULL_BEGIN

@interface FSDevice : NSObject

//获取当前设备可用内存
+ (double)availableMemory;

//获取当前任务所占用内存
+ (double)appUsedMemory;

// 时间
+ (struct tm *)currentTime;


@end

NS_ASSUME_NONNULL_END
