//
//  Z3AppMenu.h
//  Z3Login_Example
//
//  Created by 童万华 on 2019/6/12.
//  Copyright © 2019 Tony Tony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YYKit.h"
NS_ASSUME_NONNULL_BEGIN

@interface Z3AppMenu : NSObject<YYModel>
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *subname;
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *url;
@property (nonatomic,copy) NSString *iconName;
@property (nonatomic,copy) NSString *highlightIcon;
@property (nonatomic,copy) NSString *className;
@property (nonatomic,copy) NSString *command;
@property (nonatomic,assign) BOOL configurable;
@property (nonatomic,copy) NSString *badgeKey;
/**
 是否需要预先加载请求数据
 */
@property (nonatomic,assign) BOOL preload;
@property (nonatomic,assign) NSInteger eventType;
@property (nonatomic,copy) NSArray <Z3AppMenu *> *menus;
@property (nonatomic,copy) NSString *menuID;

/*镇司----begin*/
@property (nonatomic,copy) NSString *path;
@property (nonatomic,copy) NSString *gid;
@property (nonatomic,copy) NSString *params;
@property (nonatomic,copy) NSArray <Z3AppMenu *> *children;
/*镇司----end*/
@end

NS_ASSUME_NONNULL_END
