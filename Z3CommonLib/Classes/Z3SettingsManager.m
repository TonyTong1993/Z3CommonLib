//
//  SettingsManager.m
//  OutWork
//
//  Created by ZZHT on 2018/7/23.
//  Copyright © 2018年 ZZHT. All rights reserved.
//

#import "Z3SettingsManager.h"
@implementation Z3SettingsManager
static Z3SettingsManager *_instance;

+(Z3SettingsManager *)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance=[[Z3SettingsManager alloc]init];
    });
    
    return _instance;
}

- (void)setOriginPicture:(BOOL)isOrigin{
    [self setUserDefault:isOrigin key:Z3SettingsPictureOriginSettingKey];
}
- (BOOL)isOriginPicture {
    return [[NSUserDefaults standardUserDefaults] boolForKey:Z3SettingsPictureOriginSettingKey];
}


- (void)setLocationWarn:(NSString *)warn {
    [[NSUserDefaults standardUserDefaults] setObject:warn forKey:Z3SettingsManagerLocationWarnKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
    [self post:LocationWarnStatusDidChangeNotificationName];
}

- (void)setHttpsSettings:(BOOL)isOpenHttps {
    [self setUserDefault:isOpenHttps key:Z3SettingsHttpsSettingKey];
}

- (BOOL)isOpenHttps {
    return [[NSUserDefaults standardUserDefaults] boolForKey:Z3SettingsHttpsSettingKey];
}

- (void)setLocationSimulate:(BOOL)simulate {
    [self setUserDefault:simulate key:Z3SettingsManagerLocationSimulateKey];
    [self post:LocationSimulateStatusDidChangeNotificationName];
}

- (NSString *)locationWarn {
    return [[NSUserDefaults standardUserDefaults] valueForKey:Z3SettingsManagerLocationWarnKey];
}

- (NSString *)openHttps {
    return [[NSUserDefaults standardUserDefaults] valueForKey:Z3SettingsHttpsSettingKey];
}

- (void)setOpenHttps:(NSString *)openHttps {
    [[NSUserDefaults standardUserDefaults] setObject:openHttps forKey:Z3SettingsHttpsSettingKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void)clearCache {
    
}

- (BOOL)locationSimulate {
    return [[NSUserDefaults standardUserDefaults] boolForKey:Z3SettingsManagerLocationSimulateKey];
}


- (void)setUserDefault:(BOOL)value key:(NSString *)key {
    [[NSUserDefaults standardUserDefaults] setBool:value forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void)post:(NSNotificationName)notificationName {
    [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:nil];
}

- (void)netWorkTrafficBtyes:(NSString *)bytesStr {
    [[NSUserDefaults standardUserDefaults] setObject:bytesStr forKey:Z3NetWorkTrafficKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
- (NSString *) getNetWorkTraffic {
    return [[NSUserDefaults standardUserDefaults] valueForKey:Z3NetWorkTrafficKey];
}



@end

NSString * const Z3SettingsManagerLocationWarnKey = @"setting.location.warn";
NSInteger const Z3SettingsManagerLocationWarnTag = 1000;
NSInteger const Z3SettingsManagerOriginPictureTag = 2000;
NSString * const Z3SettingsManagerLocationSimulateKey = @"setting.location.simulate";
NSInteger const Z3SettingsManagerLocationSimulateTag = 1001;
NSNotificationName const LocationWarnStatusDidChangeNotificationName = @"location.warn.name";
NSNotificationName const LocationSimulateStatusDidChangeNotificationName = @"location.simulate.name";
NSString * const Z3SettingsHttpsSettingKey = @"setting.https.setting";
NSString * const Z3SettingsPictureOriginSettingKey = @"setting.picture.origin";
NSString * const Z3NetWorkTrafficKey = @"setting.location.network.traffic";

