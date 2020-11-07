//
//  Z3GISMeta.h
//  Z3MapView_Example
//
//  Created by 童万华 on 2019/6/19.
//  Copyright © 2019 Tony Tony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <YYKit/NSObject+YYModel.h>
NS_ASSUME_NONNULL_BEGIN

@protocol Z3FeatureDisplayOption <NSObject>

- (NSString *)displayText;

- (NSString *)value;

@end

@interface Z3FeatureCollectionLayer : NSObject<YYModel,Z3FeatureDisplayOption>
@property (nonatomic,copy) NSString *code;

/**
 type:4->管网
 */
@property (nonatomic,assign) NSInteger type;
@property (nonatomic,copy) NSString *remark;
@property (nonatomic,copy) NSString *layername;
@property (nonatomic,copy) NSString *descripe;
@property (nonatomic,copy) NSString *layerid;
@property (nonatomic,copy) NSString *db_mode;
@property (nonatomic,copy) NSArray  *net;

/// 适配苏州水利管网模型
@property (nonatomic,copy) NSArray *fields;
@end

@interface Z3FeatureLayer : NSObject<YYModel,Z3FeatureDisplayOption>
@property (nonatomic,copy) NSString *dname;
@property (nonatomic,copy) NSString *dalias;
@property (nonatomic,assign) NSInteger layerid;
@property (nonatomic,assign) NSInteger geotype;
@property (nonatomic,assign) NSInteger dno;
@property (nonatomic,assign) NSInteger bsprop;
@property (nonatomic,assign,getter=isVisiable) BOOL visiable;
@property (nonatomic,copy) NSArray *fields;
@end

@interface Z3FeatureLayerProperty : NSObject<Z3FeatureDisplayOption>
@property (nonatomic,copy) NSString *alias;
@property (nonatomic,copy) NSString *esritype;
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *dname;
@property (nonatomic,copy) NSString *prop;

/**
 下拉可选值
 */
@property (nonatomic,copy) NSArray *values;


/**
 1====string 文本
 2====date  日期
 3====下拉
 */
@property (nonatomic,assign) NSInteger disptype;
@property (nonatomic,copy) NSString *defval;
@property (nonatomic,copy) NSString *displayValue;
@property (nonatomic,assign) NSInteger findex;
@property (nonatomic,assign) BOOL visible;
@end
NS_ASSUME_NONNULL_END
