//
//  UserInfo.m
//  SingletonDemo
//
//  Created by 沈震 on 2017/10/2.
//  Copyright © 2017年 shenzhen. All rights reserved.
//

#import "UserInfo.h"

@implementation UserInfo

//方案1
//+ (instancetype)instantce{
//    static UserInfo *userInfo = nil;
//    
//    if (userInfo) {
//        userInfo = [[UserInfo alloc] init];
//    }
//    return userInfo;
//}
//方案2
//+ (instancetype)instantce{
//    static UserInfo *userInfo = nil;
//    
//    static dispatch_once_t predicate;
//    dispatch_once(&predicate, ^{
//         userInfo = [[UserInfo alloc] init];
//    });
//    return userInfo;
//}

@end
