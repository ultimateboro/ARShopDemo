//
//  ScanViewController.m
//  ARShopDemo
//
//  Created by Cinzia Lorusso on 24/11/13.
//  Copyright (c) 2013 Cinzia Lorusso. All rights reserved.
//

#import "ScanViewController.h"
#import "ActionPickerViewController.h"
#import "DetailViewController.h"
#import "ModelViewController.h"
#import "WardrobeViewController.h"
#import "CartViewController.h"

@implementation ScanViewController {
    ActionPickerViewController *_picker;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.title = @"Scan";
    UIBarButtonItem *actionButton = [[UIBarButtonItem alloc] initWithTitle:@"Azioni"
                                                                     style:UIBarButtonItemStylePlain
                                                                    target:self
                                                                    action:@selector(actionPressed:)];
    self.navigationItem.rightBarButtonItem = actionButton;
    
    __weak ScanViewController *wself = self;
    _picker = [[ActionPickerViewController alloc] init];
    _picker.actionButtonPressed = ^(ActionType type) {
        switch (type) {
            case DetailType: {
                DetailViewController *vc = [[DetailViewController alloc] init];
                [wself.navigationController pushViewController: vc animated: YES];
                break;
            }
            case ModelType: {
                ModelViewController *vc = [[ModelViewController alloc] init];
                [wself.navigationController pushViewController: vc animated: YES];
                break;
            }
            case AddWardrobeType: {
                WardrobeViewController *vc = [[WardrobeViewController alloc] init];
                [wself.navigationController pushViewController: vc animated: YES];
                break;
            }
            case BuyType: {
                CartViewController *vc = [[CartViewController alloc] init];
                [wself.navigationController pushViewController: vc animated: YES];
                break;
            }
            default:
                break;
        }
    };
}

- (void)actionPressed:(id)sender {
    [self presentViewController: _picker animated:YES completion:nil];
}

@end
