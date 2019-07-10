//
//  TYSettingItem.m
//  OutWork
//
//  Created by ZZHT on 2018/5/21.
//  Copyright © 2018年 ZZHT. All rights reserved.
//

#import "Z3SettingItem.h"
@implementation Z3SettingItem
+(NSArray *)loadSettingItemsWithPlistName:(NSString *)plistName {
    NSMutableArray *results = [NSMutableArray array];
    NSString *path = [[NSBundle mainBundle] pathForResource:plistName ofType:nil];
    NSError *error = nil;
    NSData *plistData = [NSData dataWithContentsOfFile:path options:NSDataReadingMappedIfSafe error:&error];
    
    if (error) {
        NSAssert(false, [error localizedDescription]);
    }
    
    NSArray *sections = [NSArray arrayWithPlistData:plistData];
    for (NSArray *section in sections) {
        NSMutableArray *models = [NSMutableArray array];
        [section enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL * _Nonnull stop) {
            Z3SettingItem *item = [Z3SettingItem modelWithJSON:obj];
            [models addObject:item];
        }];
        if (models.count)  {
            [results addObject:models];
        }
        
    }
    
    return results;
}
@end
