//
//  ViewController.m
//  WJCacheKeychain-example
//
//  Created by 吴云海 on 16/9/26.
//  Copyright © 2016年 wuyunhai. All rights reserved.
//

#import "ViewController.h"
#import "WJCacheAPI.h"
#import "WJCacheConfig.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [WJCacheConfig sharedInstance];
    
    id<IWJCache> cache = WJ_CACHE_OBJECT(WJCacheTypeKeychain);
//    [cache setBool:YES forKey:@"testbool"];
    BOOL r = [cache boolForKey:@"testbool"];
    
    NSLog(@"%@",@(r));
    
}




@end
