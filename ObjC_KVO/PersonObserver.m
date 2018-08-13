//
//  PersonObserver.m
//  ObjC_KVO
//
//  Created by Ken Chang on 2018/8/12.
//  Copyright © 2018年 Ken Chang. All rights reserved.
//

#import "PersonObserver.h"

@implementation PersonObserver

//實作
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSLog(@"old: %@", [change objectForKey:NSKeyValueChangeOldKey]);
    NSLog(@"New: %@", [change objectForKey:NSKeyValueChangeNewKey]);
    NSLog(@"context: %@", context);
}

@end
