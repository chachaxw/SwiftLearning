//
//  NetworkTools.m
//  17-单例OC
//
//  Created by Wei Zhou on 03/10/2016.
//  Copyright © 2016 Wei Zhou. All rights reserved.
//

#import "NetworkTools.h"

@implementation NetworkTools

+ (instancetype) shareNetworkTools {
    static NetworkTools *_instance;
    // onceToken默认等于0, 只要执行一次之后就不等于0了, 原理是通过判断onceToken是否等于0决定是否需要执行block
    static dispatch_once_t onceToken;
    
    NSLog(@"\nHalo %ld", onceToken);
    
    dispatch_once(&onceToken, ^{
        _instance = [[NetworkTools alloc] init];
    });
    
    return _instance;
}

@end
