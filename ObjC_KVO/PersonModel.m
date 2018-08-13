//
//  PersonModel.m
//  ObjC_KVO
//
//  Created by Ken Chang on 2018/8/12.
//  Copyright © 2018年 Ken Chang. All rights reserved.
//

#import "PersonModel.h"

@implementation PersonModel

static PersonModel* Person = nil;

+(id) sharedInstance
{
    @synchronized([PersonModel class])
    {
        if( !Person)
        {
            Person=[[PersonModel alloc] init];
        }
        return Person;
    }
    
    return nil;
}

- (id)init
{
    self = [super init];
    if(self)
    {
        _name = @"Tony";
    }
    return self;
}

@end
