//
//  ActionPickerViewController.h
//  ARShopDemo
//
//  Created by Cinzia Lorusso on 24/11/13.
//  Copyright (c) 2013 Cinzia Lorusso. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActionPickerViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic, copy) void (^actionButtonPressed)(ActionType type);
@property (nonatomic, weak) IBOutlet UIPickerView *actionPicker;

@end
