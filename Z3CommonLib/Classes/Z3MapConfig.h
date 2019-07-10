//
//  Z3MapConfig.h
//  Z3Newwork_Example
//
//  Created by 童万华 on 2019/6/5.
//  Copyright © 2019 Tony Tony. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Z3MapConfig : NSObject
@property (nonatomic,copy) NSString *initialExtent;
@property (nonatomic,copy) NSString *mapLoadType;
@property (nonatomic,copy) NSString *dispMaxResolution;
@property (nonatomic,copy) NSString *dispMinResolution;
@property (nonatomic,copy) NSString *addressSearchType;
@property (nonatomic,copy) NSArray  *sources;

@end

@interface Z3MapLayer : NSObject
@property (nonatomic,copy) NSString *sourceType;
@property (nonatomic,copy) NSString *ID;
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *desc;
@property (nonatomic,copy) NSString *url;
@property (nonatomic,assign) BOOL    visible;
@property (nonatomic,copy) NSString  *dispMaxScale;
@property (nonatomic,copy) NSString  *dispMinScale;
@property (nonatomic,copy) NSString  *dispRect;
@end

NS_ASSUME_NONNULL_END
