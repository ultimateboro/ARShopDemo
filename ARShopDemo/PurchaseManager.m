//
//  PurchaseManager.m
//  ARShopDemo
//
//  Created by Cinzia Lorusso on 24/11/13.
//  Copyright (c) 2013 Cinzia Lorusso. All rights reserved.
//

#import "PurchaseManager.h"

static PurchaseManager *sharedInstance = nil;

@implementation PurchaseManager

#pragma mark -
#pragma mark Singleton methods

+ (void)initialize {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
}

+ (PurchaseManager*)sharedInstance {
    return sharedInstance;
}

@end
