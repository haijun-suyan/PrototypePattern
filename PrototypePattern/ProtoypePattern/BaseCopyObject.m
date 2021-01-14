//  self结合上下文环境
//  BaseCopyObject.m
//  ProtoypePattern
//  id/instancetype风格：NSObject* 实例对象值
//  Created by haijunyan on 2019/2/27.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import "BaseCopyObject.h"

@implementation BaseCopyObject
- (id)copyWithZone:(NSZone *)zone {
    //特征体系类(别名)/类对象
    Class classType = [self class];
    //类名对应名称字符串实例
    NSString *classTypeStr = NSStringFromClass(classType);
    //当前Zone域结构实例体系中开辟分配实例内存对象(多态持有)
    BaseCopyObject *copyObject = [classType allocWithZone:zone];

    [self copyOperationWithObject:copyObject];
    NSLog(@"classTypeStr=%@",classTypeStr);
    return copyObject;
}

- (void)copyOperationWithObject:(id)object {
    
}


@end
