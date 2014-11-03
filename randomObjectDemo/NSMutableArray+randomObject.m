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
    for(int i=0;i<self.count;i++){
        int value=arc4random() % (self.count-i) + i;
        [self exchangeObjectAtIndex:i withObjectAtIndex:value];
    }
    NSEnumerator *myEnumerator=[self objectEnumerator];
    return myEnumerator;
}
@end
