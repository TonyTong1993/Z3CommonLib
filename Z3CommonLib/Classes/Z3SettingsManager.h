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
- (void)setLocationWarn:(NSString *)warn;
/**
 设置是否开启https

 @param openHttps default NO
 */
- (void)setOpenHttps:(NSString *)openHttps;


/**
 设置是否开启模拟定位

 @param simulate default NO
 */
- (void)setLocationSimulate:(BOOL)simulate;

/**
 设置是否是原图

 @param isOrigin  default NO
 */
- (void)setOriginPicture:(BOOL)isOrigin;
- (BOOL)isOriginPicture;


/**
 获取出圈提醒设置

 @return default NO
 */
- (NSString *)locationWarn;

/**
 获取打开https设置

 @return default NO
 */
- (NSString *)openHttps;

/**
 获取模拟定位设置
 
 @return default NO
 */
- (BOOL)locationSimulate;



/**
 清理缓存文件
 */
- (void)clearCache;

- (void)setHttpsSettings:(BOOL)isOpenHttps;

- (BOOL)isOpenHttps ;

- (void)netWorkTrafficBtyes:(NSString *)bytesStr;
- (NSString *)getNetWorkTraffic;

@end

extern NSString * const Z3SettingsManagerLocationWarnKey;
extern NSString * const Z3SettingsHttpsSettingKey;
extern NSInteger const Z3SettingsManagerLocationWarnTag;
extern NSInteger const Z3SettingsManagerOriginPictureTag;
extern NSString * const Z3SettingsManagerLocationSimulateKey;
extern NSInteger const Z3SettingsManagerLocationSimulateTag;
extern NSNotificationName const LocationWarnStatusDidChangeNotificationName;
extern NSNotificationName const LocationSimulateStatusDidChangeNotificationName;
extern NSString * const Z3SettingsPictureOriginSettingKey;
extern NSString * const Z3NetWorkTrafficKey;
