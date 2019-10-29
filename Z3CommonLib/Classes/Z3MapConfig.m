//
//  Z3MapConfig.m
//  Z3Newwork_Example
//
//  Created by 童万华 on 2019/6/5.
//  Copyright © 2019 Tony Tony. All rights reserved.
//

#import "Z3MapConfig.h"

@implementation Z3MapConfig

- (NSArray *)availiableBasemaps {
    if (self.sources.count) {
        NSMutableArray *results = [[NSMutableArray alloc] init];
        for (Z3MapLayer *layer in self.sources) {
            if ([layer.ID isEqualToString:@"1"]) {
                [results addObject:layer];
            }
        }
        Z3MapLayer *googleLayer = [[Z3MapLayer alloc] init];
        googleLayer.name = @"google map";
        [results addObject:googleLayer];
        return [results copy];
    }
    return nil;
}

-(Z3MapLayer *)visiableBasemap {
    NSArray *basemaps = [self availiableBasemaps];
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

- (NSArray *)mapLayers {
    if (self.sources.count) {
        NSMutableArray *results = [[NSMutableArray alloc] init];
        for (Z3MapLayer *layer in self.sources) {
            if (![layer.ID isEqualToString:@"1"]) {
                [results addObject:layer];
            }
        }
        return [results copy];
    }
    return nil;
}

@end

@implementation Z3MapLayer

@end




