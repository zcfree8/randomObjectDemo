//
//  NSMutableArray+randomObject.m
//  1015test
//
//  Created by Yorke on 14/11/3.
//  Copyright (c) 2014年 Yorke. All rights reserved.
//

#import "NSMutableArray+randomObject.h"

@implementation NSMutableArray (randomObject)

-(NSEnumerator *)randomObjectEnumerator{
    NSMutableArray *arr=[self mutableCopy];
    for(int i=0;i<arr.count;i++){
        int value=arc4random() % (arr.count-i) + i;
        [arr exchangeObjectAtIndex:i withObjectAtIndex:value];
    }
    NSEnumerator *myEnumerator=[arr objectEnumerator];
    return myEnumerator;
}
@end
