//
//  PersonCenter.h
//  SingletonDemo
//
//  Created by 沈震 on 2017/10/2.
//  Copyright © 2017年 shenzhen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersonCenter : NSObject

//单列
+ (instancetype)shareInstance;
//该方法用来存储值
- (void)saveValue:(id)value withKey:(NSString *)key;
//取值
- (id)valueWithKey:(NSString *)key;


@end
