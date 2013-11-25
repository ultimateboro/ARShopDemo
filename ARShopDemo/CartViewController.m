//
//  CartViewController.m
//  ARShopDemo
//
//  Created by Cinzia Lorusso on 24/11/13.
//  Copyright (c) 2013 Cinzia Lorusso. All rights reserved.
//

#import "CartViewController.h"
#import "PurchaseManager.h"

@implementation CartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Carrello";
    self.edgesForExtendedLayout = UIRectEdgeNone;
}


- (IBAction)puchaseButtonPressed:(id)sender {
    [PurchaseManager sharedInstance].purchaseComplete = YES;
    [self.navigationController popToRootViewControllerAnimated: YES];
}

@end
