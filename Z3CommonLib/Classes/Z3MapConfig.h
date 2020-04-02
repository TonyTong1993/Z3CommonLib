//
//  Z3MapConfig.h
//  Z3Newwork_Example
//
//  Created by 童万华 on 2019/6/5.
//  Copyright © 2019 Tony Tony. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Z3MapLayer;
@interface Z3MapConfig : NSObject
@property (nonatomic,copy) NSString *initialExtent;
@property (nonatomic,copy) NSString *mapLoadType;
@property (nonatomic,copy) NSString *dispMaxResolution;
@property (nonatomic,copy) NSString *dispMinResolution;
@property (nonatomic,copy) NSString *addressSearchType;
@property (nonatomic,copy) NSArray  *basemaps;
@property (nonatomic,copy) NSArray  *sources;

/**
 *为解决需求1870 【苏州水利】app地图中心-图层管理引入
 存放多组sources
 */
@property (nonatomic,copy) NSMutableArray  *groupSources;
- (NSArray *)availiableBasemaps;
-(Z3MapLayer *)visiableBasemap;
- (NSArray *)mapLayers;
@end

@interface Z3Basemap : NSObject
@property (nonatomic,copy) NSString *sourceType;
@property (nonatomic,copy) NSString *ID;
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *desc;
@property (nonatomic,copy) NSString *url;
@property (nonatomic,assign) BOOL    visible;
@property (nonatomic,copy) NSString *token;
@property (nonatomic,copy) NSString  *dispMaxScale;
@property (nonatomic,copy) NSString  *dispMinScale;
@property (nonatomic,copy) NSString  *dispRect;
@property (nonatomic,copy) NSArray  *sources;
@property (nonatomic,assign) float opacity;
@end

@protocol AGSLayerContent;
@interface Z3MapLayer : NSObject
@property (nonatomic,copy) NSString *sourceType;
@property (nonatomic,copy) NSString *ID;
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *desc;
@property (nonatomic,copy) NSString *url;
@property (nonatomic,copy) NSString *token;
@property (nonatomic,assign) BOOL    visible;
@property (nonatomic,copy) NSString  *dispMaxScale;
@property (nonatomic,copy) NSString  *dispMinScale;
@property (nonatomic,copy) NSString  *dispRect;
@property (nonatomic,strong) UIImage *symbolImage;
@property (nonatomic,copy) NSArray *subLayers;
@property (nonatomic,strong) id<AGSLayerContent> agsLayer;
@property (nonatomic,assign) float opacity;
@end

NS_ASSUME_NONNULL_END
