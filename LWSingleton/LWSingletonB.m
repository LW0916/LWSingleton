//
//  LWSingletonB.m
//  LWSingleton
//
//  Created by lwmini on 2018/12/10.
//  Copyright © 2018年 lw. All rights reserved.
//

#import "LWSingletonB.h"

@implementation LWSingletonB

+(LWSingletonB *)sharedInstance{
    static LWSingletonB * s_instance_lw_singleton = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        s_instance_lw_singleton = [[super allocWithZone:nil] init];
    });
    return s_instance_lw_singleton;
}

@end
