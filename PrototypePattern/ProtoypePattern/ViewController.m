//
//  ViewController.m
//  ProtoypePattern
//
//  Created by haijunyan on 2019/2/27.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import "ViewController.h"

#import "ClassModel.h"
#import "Student.h"

#import "StudentModel.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self testProtoypeCopyProtocol];
//    [self testNSCopying];
    
}


- (void)testProtoypeCopyProtocol {
    //原型学生1内存
    StudentModel *stu1 = [[StudentModel alloc] init];
    stu1.address       = @"中关村";
    
    //副本(Copy)学生2内存
    StudentModel *stu2 = [stu1 clone];


}

- (void)testNSCopying {
    //原型stu1内存
    Student *stu1 = [[Student alloc] init];
    stu1.name          = @"小明";

    //副本(Copy)stu2内存
    //Copy事件的内部存在指令调用copyWithZone事件(通过遵循NSCopying协议的当前地址指针访问当前地址域内的 协议事件copyWithZone)
    //xxx.copy带有有效信息的已复制对象内存
    Student *stu2 = stu1.copy;//stu1：Student

    ClassModel *class1 = [[ClassModel alloc] init];
    class1.className   = @"班级1";
    class1.students    = @[stu1,stu2];

    ClassModel *class2 = class1.copy;

    NSLog(@"%@ %@",class1,class2);
    NSLog(@"%@", class1.students);
    NSLog(@"%@", class2.students);
}


@end
