//
//  Z3QueryTaskHelper.h
//  PipeNet
//
//  Created by 童万华 on 2019/7/4.
//  Copyright © 2019 ZZHT. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
extern NSString * const SPACIAL_SEARCH_URL_TASK_NAME;
extern NSString * const PATROL_FEATURE_SERVER_TASK_NAME;
extern NSString * const PATROL_SERVER_TASK_NAME;
extern NSString * const WAI_QIN_SERVER_TASK_NAME;
extern NSString * const LEAKING_SERVER_TASK_NAME;
extern NSString * const PATROL_DEVICE_QUERY_IPPORT_TASK_NAME;
extern NSString * const ADDRESS_SEARCH_SERVER_TASK_NAME;
extern NSString * const BSS_SERVER_TASK_NAME;
@class Z3MobileTask;
@interface Z3QueryTaskHelper : NSObject
+ (instancetype)helper;
- (Z3MobileTask *)queryTaskWithName:(NSString *)name;
@end

NS_ASSUME_NONNULL_END
