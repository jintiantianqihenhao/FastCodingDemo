//
//  UserInfo.h
//  SingletonDemo
//
//  Created by 沈震 on 2017/10/2.
//  Copyright © 2017年 shenzhen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserInfo : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *feature;

+ (instancetype)instantce;


@end
