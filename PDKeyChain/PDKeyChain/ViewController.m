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
    [self checkKeyChain];
}

- (void)checkKeyChain {
    if (![PDKeyChain keyChainLoad]) {
        NSLog(@"keyChain check: exist");
    }else {
        NSLog(@"keyChain check: absent");
    }
}

- (IBAction)save:(UIButton *)sender {
    [PDKeyChain keyChainSave:[[NSUUID UUID]UUIDString]];
    NSLog(@"keyChain save success");
}

- (IBAction)load:(UIButton *)sender {
    if (![PDKeyChain keyChainLoad]) {
        NSLog(@"keyChain load fail");
    }else {
        NSLog(@"keyChain load success: %@ ",[PDKeyChain keyChainLoad]);
    }
}

- (IBAction)delete:(UIButton *)sender {
    [PDKeyChain keyChainDelete];
    if (![PDKeyChain keyChainLoad]) {
        NSLog(@"keyChain delete success ");
    }
}

@end
