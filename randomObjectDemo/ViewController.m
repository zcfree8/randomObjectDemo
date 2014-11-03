//
//  ViewController.m
//  randomObjectDemo
//
//  Created by Yorke on 14/11/3.
//  Copyright (c) 2014年 Yorke. All rights reserved.
//

#import "ViewController.h"
#import "NSMutableArray+randomObject.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *arr1=[NSMutableArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"0", nil];
    NSArray *arr2= [arr1 randomObjectEnumerator].allObjects;
    NSArray *arr3=[arr1 reverseObjectEnumerator].allObjects;
    NSLog(@"%@",arr1);
    NSLog(@"%@",arr2);
    NSLog(@"%@",arr3);
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
