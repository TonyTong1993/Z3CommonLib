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
@property (nonatomic,copy) NSString *coorTransToken;

    /// 坐标转换后的x,y是反转
@property (nonatomic,assign) BOOL coorTransReverse;
/*
 *查询features 保存的临时公用数据
 */
@property (nonatomic,copy) NSDictionary *spatialReference;
@property (nonatomic,copy) NSArray *fields;
@property (nonatomic,copy) NSDictionary *fieldAliases;

/**
 是否离线登录
 */
@property (nonatomic,assign) BOOL offlineLogin;
/**
 地图参考系wkid，默认值为2437
 */
@property (nonatomic,assign) NSInteger wkid;

/*
 *苏州水利 禅道需求编号：2460 手持端信息采集上报中工程分类和发生位置自动关联
 *保存行政区域配置数据
 */
@property (nonatomic,copy) NSArray *districts;
@end

NS_ASSUME_NONNULL_END
