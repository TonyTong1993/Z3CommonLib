//
//  Z3MobileConfig.h
//  Z3Newwork_Example
//
//  Created by 童万华 on 2019/6/5.
//  Copyright © 2019 Tony Tony. All rights reserved.
/*
 *configs from mobileConfig.xml
 */

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Z3MapConfig,Z3MobileTask,Z3AppMenu,CoorTranUtil;
@interface Z3MobileConfig : NSObject
+ (instancetype)shareConfig;
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

@property (nonatomic,strong) Z3MapConfig *mapConfig;
@property (nonatomic,strong) NSArray *tasks;
@property (nonatomic,strong) NSArray<Z3AppMenu *> *menus;
@property (nonatomic,strong) NSString *mobileMapURL;
@property (nonatomic,strong) NSString *transParamsURL;
@property (nonatomic,strong) NSArray *gisMetas;
@property (nonatomic,strong) CoorTranUtil *coorTrans;

/**
 是否离线登录
 */
@property (nonatomic,assign) BOOL offlineLogin;
/**
 地图参考系wkid，默认值为2437
 */
@property (nonatomic,assign) NSInteger wkid;
@end

NS_ASSUME_NONNULL_END
