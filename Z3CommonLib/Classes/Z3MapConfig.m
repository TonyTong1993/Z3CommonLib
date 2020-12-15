//
//  Z3MapConfig.m
//  Z3Newwork_Example
//
//  Created by 童万华 on 2019/6/5.
//  Copyright © 2019 Tony Tony. All rights reserved.
//

#import "Z3MapConfig.h"
#import "Z3AGSLayerFactory.h"
@implementation Z3MapConfig

- (NSArray *)availiableBasemaps {
    if (self.basemaps.count) {
        return self.basemaps;
    }

    return nil;
}

-(Z3MapLayer *)visiableBasemap {
    NSArray *basemaps = self.basemaps.count > 1 ? self.basemaps : [self availiableBasemaps];
    if (basemaps.count) {
        NSMutableArray *results = [[NSMutableArray alloc] init];
        for (Z3MapLayer *layer in [self availiableBasemaps]) {
            if (layer.visible) {
                [results addObject:layer];
            }
        }
        return [results firstObject];
    }
    
    return nil;
}

-(NSArray *)visiableBasemaps {
    if(self.basemaps == nil){
        return nil;
    }
    NSMutableArray *results = [[NSMutableArray alloc] init];
    for (Z3MapLayer *layer in self.basemaps) {
        AGSLayer *agslayer = [[Z3AGSLayerFactory factory] loadMapLayer:layer];
        [results addObject:agslayer];
    }
    return [results copy];
}

- (NSArray *)mapLayers {
    return self.sources;
}

- (NSMutableArray *)groupSources {
    if (!_groupSources) {
        _groupSources = [[NSMutableArray alloc] init];
    }
    return _groupSources;
}

@end

@implementation Z3Basemap

- (float)opacity {
    if (_opacity <= 0) {
        return 1;
    }
    
    return _opacity;
}
@end

@implementation Z3MapLayer

- (float)opacity {
    if (_opacity <= 0) {
        return 1;
    }
    
    return _opacity;
}

@end




