//
//  TYSettingItem.h
//  OutWork
//
//  Created by ZZHT on 2018/5/21.
//  Copyright © 2018年 ZZHT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <YYKit/YYKit.h>
typedef NS_ENUM(NSInteger, SettingItemAccessoryType) {
    SettingItemCellAccessoryNone,                                                      // don't show any accessory view
    SettingItemAccessoryDisclosureIndicator,                                       // regular chevron. doesn't track
    SettingItemAccessoryDetailDisclosureButton __TVOS_PROHIBITED,                 // info button w/ chevron. tracks
    SettingItemAccessoryCheckmark,                                                 // checkmark. doesn't track
    SettingItemAccessoryDetailButton NS_ENUM_AVAILABLE_IOS(7_0)  __TVOS_PROHIBITED, // info button. tracks
    SettingItemAccessorySwitch
};



@interface Z3SettingItem : NSObject<YYModel>
@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *navTitle;
@property (nonatomic,copy) NSString *subTitle;
@property (nonatomic,assign) SettingItemAccessoryType accessoryType;
#pragma mark---exten SettingItemAccessorySwitch
@property (nonatomic,copy) NSString *switchOn;
@property (nonatomic,copy) NSString *switchOff;
@property (nonatomic,copy) NSString *className;

+(NSArray *)loadSettingItemsWithPlistName:(NSString *)plistName;
@end
