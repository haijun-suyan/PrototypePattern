//
//  BaseCustomCopyObject.m
//  ProtoypePattern
//
//  Created by haijunyan on 2021/1/14.
//  Copyright © 2021 wupeng. All rights reserved.
//

#import "BaseCustomCopyObject.h"

@implementation BaseCustomCopyObject

- (id)clone {
    //特征体系类(别名)/类对象
    Class classType = [self class];
    //类名对应名称字符串实例
    NSString *classTypeStr = NSStringFromClass(classType);
    //系统默认的域结构体系中开辟分配实例内存对象(多态持有)
    BaseCustomCopyObject *copyObject = [[classType alloc] init];
    [self cloneOperationWithObject:copyObject];
    NSLog(@"classTypeStr=%@",classTypeStr);
    return copyObject;
}

- (void)cloneOperationWithObject:(id)object {

}
@end
