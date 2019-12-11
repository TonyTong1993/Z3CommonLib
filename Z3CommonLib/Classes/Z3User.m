//
//  Z3User.m
//  Z3Login_Example
//
//  Created by 童万华 on 2019/6/12.
//  Copyright © 2019 Tony Tony. All rights reserved.
//

#import "Z3User.h"

NSString * const Z3KEY_AUTO_LOGIN = @"AUTO_LOGIN";
NSString * const Z3KEY_AUTO_FILL_PWD = @"AUTO_FILL_PWD";
NSString * const Z3KEY_USER_NAME = @"USER_NAME";
NSString * const Z3KEY_USER_PASSWORD = @"USER_PASSWORD";
NSString * const Z3KEY_USER_ACCESS_TOKEN = @"USER_ACCESS_TOKEN";
NSString * const Z3KEY_USER_LOGIN_FLAG = @"USER_LOGIN_FLAG";//登录状态
NSString * const Z3KEY_USER_AUTHORIZATION_EVENT_EDIT = @"eventedit";//事件编辑
NSString * const Z3KEY_USER_AUTHORIZATION_EVENT_SELF_QUERY = @" queryEventSelf";//一键转工单
NSString * const Z3KEY_USER_AUTHORIZATION_EVENT_TO_WORK_ORDER = @"oneKeyToWorkorder";//一键转工单

@implementation Z3User
+ (instancetype)shareInstance {
    static Z3User *_instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

@end
