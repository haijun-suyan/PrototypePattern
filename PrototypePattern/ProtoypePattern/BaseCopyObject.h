//  Copy辅助基类
//  BaseCopyObject.h
//  ProtoypePattern
//  原型NSCopying系统拷贝协议
//  Created by haijunyan on 2019/2/27.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import <Foundation/Foundation.h> 

@interface BaseCopyObject : NSObject <NSCopying,NSMutableCopying>


/**
 子级类中不需要重载(重构协议事件本身实例)
 NSCopying 协议事件API
 @param zone zone 某个Zone域结构实例
 @return 复制的对象
 */

- (id)copyWithZone:(NSZone *)zone;

/**
 事件API由子类重构实例实现
 @param object Zone域结构实例体系中新开辟实例内存(复制特性(同级别不同的内存(同级别不同的实例)))
 */
- (void)copyOperationWithObject:(id)object;

@end
