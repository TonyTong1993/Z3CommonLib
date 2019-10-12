//
//  Z3MobileConfig.m
//  Z3Newwork_Example
//
//  Created by 童万华 on 2019/6/5.
//  Copyright © 2019 Tony Tony. All rights reserved.
//

#import "Z3MobileConfig.h"
@implementation Z3MobileConfig
+ (instancetype)shareConfig {
    static dispatch_once_t onceToken;
    static Z3MobileConfig *_instance;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}


/**
 *4549 苏州水利
 *102159 澳门自来水 墨卡托 102113;WGS48 4326
 */
- (instancetype)init {
    self = [super init];
    if (self) {
//        _wkid = 4549;
        _wkid = 102159;
    }
    return self;
}

@end

