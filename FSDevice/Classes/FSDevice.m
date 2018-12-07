//
//  FSDevice.m
//  FSDeviceSample
//
//  Created by fudongdong on 2018/12/7.
//  Copyright © 2018年 fudongdong. All rights reserved.
//

#import "FSDevice.h"

@implementation FSDevice

+ (double)availableMemory{
    vm_statistics_data_t vmStats;
    mach_msg_type_number_t infoCount = HOST_VM_INFO_COUNT;
    kern_return_t kernReturn = host_statistics(mach_host_self(),
                                               HOST_VM_INFO,
                                               (host_info_t)&vmStats,
                                               &infoCount);
    
    if (kernReturn != KERN_SUCCESS) {
        return NSNotFound;
    }
    return (vm_page_size * vmStats.free_count);
}

+ (double)appUsedMemory{
    task_basic_info_data_t taskInfo;
    mach_msg_type_number_t infoCount = TASK_BASIC_INFO_COUNT;
    kern_return_t kernReturn = task_info(mach_task_self(),
                                         TASK_BASIC_INFO,
                                         (task_info_t)&taskInfo,
                                         &infoCount);
    
    if (kernReturn != KERN_SUCCESS) {
        return NSNotFound;
    }
    return taskInfo.resident_size;
}

+ (struct tm *)currentTime{
    //时间格式
    struct timeval ticks;
    gettimeofday(&ticks, nil);
    time_t now;
    struct tm *timeNow;
    time(&now);
    timeNow = localtime(&now);
    timeNow->tm_gmtoff = ticks.tv_usec/1000;  //毫秒
    
    timeNow->tm_year += 1900;    //tm中的tm_year是从1900至今数
    timeNow->tm_mon  += 1;       //tm_mon范围是0-11
    
    return timeNow;
}

@end
