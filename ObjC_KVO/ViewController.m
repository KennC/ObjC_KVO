//
//  ViewController.m
//  ObjC_KVO
//
//  Created by Ken Chang on 2018/8/12.
//  Copyright © 2018年 Ken Chang. All rights reserved.
//

#import "ViewController.h"
#import "PersonModel.h"
#import "PersonObserver.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self testKVO];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)testKVO
{
    PersonModel *aPerson = [PersonModel sharedInstance];
    PersonObserver *aPersonObserver = [[PersonObserver alloc] init];
    
    //觀察name
    [aPerson addObserver:aPersonObserver
              forKeyPath:@"name"
                 options:(NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld)
                 context:@"this is a context"];
    
    //name數值改變
    [aPerson setValue:@"LiLei" forKey:@"name"];
    
    //觀察address
    [aPerson addObserver:aPersonObserver
              forKeyPath:@"address"
                 options:(NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld)
                 context:@"this is a context"];
    
    //address數值改變
    [aPerson setValue:@"street" forKey:@"address"];
    
    //移除觀察
    [aPerson removeObserver:aPersonObserver forKeyPath:@"name"];
    [aPerson removeObserver:aPersonObserver forKeyPath:@"address"];
    
}

@end
