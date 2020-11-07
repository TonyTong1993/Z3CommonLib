//
//  Z3GISMetaResponse.m
//  Z3MapView_Example
//
//  Created by 童万华 on 2019/6/19.
//  Copyright © 2019 Tony Tony. All rights reserved.
//

#import "Z3GISMetaResponse.h"
#import "Z3FeatureCollectionLayer.h"

@interface Z3GISMetaResponse ()
@property (nonatomic,copy,readwrite) NSDictionary *responseJSONObject;
@end

@implementation Z3GISMetaResponse
@synthesize data = _data;
- (void)toModel {
    NSDictionary *metaJson = self.responseJSONObject;
    if ([metaJson isKindOfClass:[NSDictionary class]]) {
        NSArray *metas =  metaJson[@"metainfo"];
        NSMutableArray *mMetas = [NSMutableArray arrayWithCapacity:metas.count];
        for (NSDictionary *metaInfo in metas) {
            Z3FeatureCollectionLayer *meta = [Z3FeatureCollectionLayer modelWithJSON:metaInfo];
            [mMetas addObject:meta];
        }
        _data = [mMetas copy];
        NSString *path = [self.class cachePath];
        BOOL success = [metaJson writeToFile:path atomically:YES];
        NSAssert(success, @"保持元数据失败");
    }
}

+ (NSString *)cachePath {
    NSString *root = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject;
    NSString *path = [root stringByAppendingPathComponent:@"gismeta.json"];
    NSLog(@"cachePath = %@",path);
    return path;
}

+ (instancetype)loadGisCache {
    NSString *path = [self.class cachePath];
    NSDictionary *metaJson = [[NSDictionary alloc] initWithContentsOfFile:path];
    Z3GISMetaResponse *response = Z3GISMetaResponse.new;
    response.responseJSONObject = metaJson;
    [response toModel];
    return response;
}

@end
