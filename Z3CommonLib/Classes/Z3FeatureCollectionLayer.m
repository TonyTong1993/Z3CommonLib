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
    return @{@"net":[Z3FeatureLayer class],@"fields":[Z3FeatureLayerProperty class]};
}

- (NSString *)displayText {
    return _descripe;
}

- (nonnull NSString *)value {
    return _layername;
}

@end

@implementation Z3FeatureLayer
+ (NSDictionary<NSString *,id> *)modelContainerPropertyGenericClass {
    return @{@"fields":[Z3FeatureLayerProperty class]};
}

- (NSString *)displayText {
    return _dalias;
}

- (nonnull NSString *)value {
    return _dname;
}

@end

@implementation Z3FeatureLayerProperty
- (NSString *)displayText {
    return _alias;
}

- (nonnull NSString *)value {
    return _name;
}

@end
