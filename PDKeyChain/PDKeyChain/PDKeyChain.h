//
//  PDKeyChain.h
//  PDKeyChain
//
//  Created by Panda on 16/8/23.
//  Copyright © 2016年 v2panda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Security/Security.h>

@interface PDKeyChain : NSObject

+ (void)keyChainSave:(NSString *)service;

+ (NSString *)keyChainLoad;

+ (void)keyChainDelete;

@end
