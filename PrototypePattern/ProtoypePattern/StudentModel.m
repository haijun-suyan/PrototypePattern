//
//  StudentModel.m
//  ProtoypePattern
//
//  Created by haijunyan on 2019/2/27.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import "StudentModel.h"

@implementation StudentModel

//父类的事件API重构(多态机制(行参元结构特征：同类/子类))
//复制对象后做操作
- (void)cloneOperationWithObject:(StudentModel *)object {
    //同级别不同的内存
    //object：已复制的对象
    //self：类外调用alloc指令所开辟的对象
    object.address = self.address;
}

@end
