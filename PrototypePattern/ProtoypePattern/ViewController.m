//
//  ViewController.m
//  ProtoypePattern
//
//  Created by haijunyan on 2019/2/27.
//  Copyright © 2019年 haijunyan. All rights reserved.
//

#import "ViewController.h"
#import "StudentModel.h"
#import "ClassModel.h"
#import "Student.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self testProtoypeCopyProtocol];
    [self testNSCopying];
    
}

//为了方便演示，代码中有两个student的model
- (void)testProtoypeCopyProtocol {
    // 学生1
    StudentModel *stu1 = [[StudentModel alloc] init];
    stu1.name          = @"小王";
    stu1.age           = @(19);
    stu1.address       = @"中关村";
    stu1.totalScore    = @(100);
    
    // 学生2
    StudentModel *stu2 = [stu1 clone];
    stu2.name          = @"小红";
    NSLog(@"%@", stu2.name);

}

- (void)testNSCopying {
    Student *stu1 = [[Student alloc] init];
    stu1.name          = @"小明";
    
    Student *stu2 = stu1.copy;
    
    ClassModel *class1 = [[ClassModel alloc] init];
    class1.className   = @"班级1";
    class1.students    = @[stu1, stu2];
    
    ClassModel *class2 = class1.copy;
    NSLog(@"%@ %@", class1, class2);
    
    NSLog(@"%@", class1.students);
    NSLog(@"%@", class2.students);
}



@end
