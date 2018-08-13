//
//  PersonModel.h
//  ObjC_KVO
//
//  Created by Ken Chang on 2018/8/12.
//  Copyright © 2018年 Ken Chang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersonModel : NSObject

+ (id)sharedInstance;

@property (nonatomic, copy) NSString *address;
@property (nonatomic, copy) NSString *name;

@end
