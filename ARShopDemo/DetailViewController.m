//
//  DetailViewController.m
//  ARShopDemo
//
//  Created by Cinzia Lorusso on 24/11/13.
//  Copyright (c) 2013 Cinzia Lorusso. All rights reserved.
//

#import "DetailViewController.h"
#import "ModelViewController.h"
#import "WardrobeViewController.h"
#import "CartViewController.h"

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Dettagli";
    self.edgesForExtendedLayout = UIRectEdgeNone;
}

- (IBAction)modelPressed:(UIButton *)doneButton {
    ModelViewController *vc = [[ModelViewController alloc] init];
    [self.navigationController pushViewController: vc animated: YES];
}


- (IBAction)wardrobePressed:(UIButton *)doneButton {
    WardrobeViewController *vc = [[WardrobeViewController alloc] init];
    [self.navigationController pushViewController: vc animated: YES];

}

- (IBAction)cartPressed:(UIButton *)doneButton {
    CartViewController *vc = [[CartViewController alloc] init];
    [self.navigationController pushViewController: vc animated: YES];
}

- (IBAction)otherDressPressed:(UIButton *)doneButton {
    ModelViewController *vc = [[ModelViewController alloc] init];
    [self.navigationController pushViewController: vc animated: YES];
}

@end
