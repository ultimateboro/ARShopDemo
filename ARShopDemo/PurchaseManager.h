//
//  PurchaseManager.h
//  ARShopDemo
//
//  Created by Cinzia Lorusso on 24/11/13.
//  Copyright (c) 2013 Cinzia Lorusso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PurchaseManager : NSObject

@property (nonatomic) BOOL purchaseComplete;

+ (PurchaseManager*)sharedInstance;

@end
