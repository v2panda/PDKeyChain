//
//  ViewController.m
//  PDKeyChain
//
//  Created by Panda on 16/8/23.
//  Copyright © 2016年 v2panda. All rights reserved.
//

#import "ViewController.h"
#import "PDKeyChain.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // test
    if (![PDKeyChain keyChainLoad]) {
        NSLog(@"keyChain load fail");
        [PDKeyChain keyChainSave:[[NSUUID UUID]UUIDString]];
        NSLog(@"keyChain save success");
    }else {
        NSLog(@"keyChainLoad: %@ ",[PDKeyChain keyChainLoad]);
    }
}


@end
