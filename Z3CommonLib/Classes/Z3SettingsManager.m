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


- (void)setLocationWarn:(BOOL)warn {
    [self setUserDefault:warn key:Z3SettingsManagerLocationWarnKey];
    [self post:LocationWarnStatusDidChangeNotificationName];
}

- (void)setLocationSimulate:(BOOL)simulate {
    [self setUserDefault:simulate key:Z3SettingsManagerLocationSimulateKey];
    [self post:LocationSimulateStatusDidChangeNotificationName];
}

- (BOOL)locationWarn {
    return [[NSUserDefaults standardUserDefaults] boolForKey:Z3SettingsManagerLocationWarnKey];
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




@end

NSString * const Z3SettingsManagerLocationWarnKey = @"setting.location.warn";
NSInteger const Z3SettingsManagerLocationWarnTag = 1000;
NSString * const Z3SettingsManagerLocationSimulateKey = @"setting.location.simulate";
NSInteger const Z3SettingsManagerLocationSimulateTag = 1001;
NSNotificationName const LocationWarnStatusDidChangeNotificationName = @"location.warn.name";
NSNotificationName const LocationSimulateStatusDidChangeNotificationName = @"location.simulate.name";

