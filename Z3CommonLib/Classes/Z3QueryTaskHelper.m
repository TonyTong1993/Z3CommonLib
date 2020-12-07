//
//  Z3QueryTaskHelper.m
//  PipeNet
//
//  Created by 童万华 on 2019/7/4.
//  Copyright © 2019 ZZHT. All rights reserved.
//

#import "Z3QueryTaskHelper.h"
#import "Z3MobileConfig.h"
#import "Z3MobileTask.h"
NSString * const SPACIAL_SEARCH_URL_TASK_NAME = @"SpacialSearchUrl";
NSString * const PATROL_FEATURE_SERVER_TASK_NAME = @"PatrolFeatureServer";
NSString * const PATROL_SERVER_TASK_NAME = @"PatrolServer";
NSString * const PATROL_FORWARD_SERVER_TASK_NAME = @"ForwardServer";
NSString * const WAI_QIN_SERVER_TASK_NAME = @"WaiQinServer";
NSString * const LEAKING_SERVER_TASK_NAME = @"LeakingServer";
NSString * const PATROL_DEVICE_QUERY_IPPORT_TASK_NAME = @"PatrolDeviceQueryIpPort";
NSString * const ADDRESS_SEARCH_SERVER_TASK_NAME = @"AddressSearchServerUrl";
NSString * const BSS_SERVER_TASK_NAME = @"BssServer";
NSString * const MQTT_HOST_URL_TASK_NAME = @"MqttHostUrl";
NSString * const MQTT_GPS_SERVICE_URL_TASK_NAME = @"MqttGpsServiceUrl";
NSString * const PLAN_TASK_START_VOI_TIP_TASK_NAME = @"PlanTaskStartVoiTip";

@implementation Z3QueryTaskHelper
+ (instancetype)helper {
    return [[super alloc] init];
}

- (Z3MobileTask *)queryTaskWithName:(NSString *)name {
    NSArray *tasks = [Z3MobileConfig shareConfig].tasks;
    __block Z3MobileTask *task = nil;
    [tasks enumerateObjectsUsingBlock:^(Z3MobileTask *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj.name isEqualToString:name]) {
            task = obj;
            *stop = YES;
        }
    }];
    
    return task;
}
@end
