//
//  SettingsManager.h
//  OutWork
//
//  Created by ZZHT on 2018/7/23.
//  Copyright © 2018年 ZZHT. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Z3SettingsManager : NSObject
+(Z3SettingsManager *)sharedInstance;


/**
 设置是否开启出圈提醒

 @param warn default NO
 */
- (void)setLocationWarn:(BOOL)warn;

/**
 设置是否开启模拟定位

 @param simulate default NO
 */
- (void)setLocationSimulate:(BOOL)simulate;



/**
 获取出圈提醒设置

 @return default NO
 */
- (BOOL)locationWarn;

/**
 获取模拟定位设置
 
 @return default NO
 */
- (BOOL)locationSimulate;



/**
 清理缓存文件
 */
- (void)clearCache;

@end

extern NSString * const Z3SettingsManagerLocationWarnKey;
extern NSInteger const Z3SettingsManagerLocationWarnTag;
extern NSString * const Z3SettingsManagerLocationSimulateKey;
extern NSInteger const Z3SettingsManagerLocationSimulateTag;
extern NSNotificationName const LocationWarnStatusDidChangeNotificationName;
extern NSNotificationName const LocationSimulateStatusDidChangeNotificationName;
