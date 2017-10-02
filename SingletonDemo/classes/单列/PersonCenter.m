//
//  PersonCenter.m
//  SingletonDemo
//
//  Created by 沈震 on 2017/10/2.
//  Copyright © 2017年 shenzhen. All rights reserved.
//

#import "PersonCenter.h"
#import "FastCoder.h"

@implementation PersonCenter

+ (instancetype)shareInstance{
    static PersonCenter *pCenter = nil;
    
    static dispatch_once_t predicate;
    
    dispatch_once(&predicate, ^{
        pCenter = [[PersonCenter alloc] init];
        
    });
    
    return pCenter;
}
//该方法用来存储值
- (void)saveValue:(id)value withKey:(NSString *)key{
    // value 和 key 不能为空  为空让其奔溃
    NSParameterAssert(value);
    NSParameterAssert(key);
    //1、讲 value 转换为 data
    NSData *data = [FastCoder dataWithRootObject:value];
    if (data) {
        //2、讲 data存储在userDef中
        [[NSUserDefaults standardUserDefaults] setObject:data forKey:key];
    }
}
//取值
- (id)valueWithKey:(NSString *)key{
    NSParameterAssert(key);
    NSData *data =[[NSUserDefaults standardUserDefaults] valueForKey:key];
    return [FastCoder objectWithData:data];
}
@end
