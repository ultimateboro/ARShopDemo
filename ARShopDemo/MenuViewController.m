//
//  MenuViewController.m
//  ARShopDemo
//
//  Created by Cinzia Lorusso on 24/11/13.
//  Copyright (c) 2013 Cinzia Lorusso. All rights reserved.
//

#import "MenuViewController.h"
#import "ScanViewController.h"
#import "PurchaseManager.h"

@implementation MenuViewController {
    IBOutlet UIButton *_dismissButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Menu";
    _dismissButton.hidden = YES;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear: animated];
    _dismissButton.hidden = ![PurchaseManager sharedInstance].purchaseComplete;
}

- (IBAction)scanButtonPressed:(id)sender {
    ScanViewController *scanViewController = [[ScanViewController alloc] init];
    [self.navigationController pushViewController: scanViewController animated: YES];
}

- (IBAction)dismissButtonPressed:(id)sender {
    _dismissButton.hidden = YES;
    [PurchaseManager sharedInstance].purchaseComplete = NO;
}

@end
