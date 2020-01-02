//
//  Z3GISMeta.m
//  Z3MapView_Example
//
//  Created by 童万华 on 2019/6/19.
//  Copyright © 2019 Tony Tony. All rights reserved.
//

#import "Z3FeatureCollectionLayer.h"
@implementation Z3FeatureCollectionLayer
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass {
    return @{@"net":[Z3FeatureLayer class]};
}

- (NSString *)displayText {
    return _descripe;
}
@end

@implementation Z3FeatureLayer
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass {
    return @{@"fields":[Z3FeatureLayerProperty class]};
}

- (NSString *)displayText {
    return _dalias;
}
@end

@implementation Z3FeatureLayerProperty
- (NSString *)displayText {
    return _alias;
}
@end
