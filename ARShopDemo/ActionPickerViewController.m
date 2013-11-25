//
//  ActionPickerViewController.m
//  ARShopDemo
//
//  Created by Cinzia Lorusso on 24/11/13.
//  Copyright (c) 2013 Cinzia Lorusso. All rights reserved.
//

#import "ActionPickerViewController.h"

@implementation ActionPickerViewController

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 4;
}
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component {
    return 60.f;
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view {
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.f, 0.f, 320.f, 60.f)];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    if (row==0)
        titleLabel.text = @"Dettagli";
    else if (row==1)
        titleLabel.text = @"Modello 3D";
    else if (row==2)
        titleLabel.text = @"Aggiungi a guardaroba";
    else
        titleLabel.text = @"Acquista";
    return titleLabel;
}

- (IBAction)donePressed:(UIButton *)doneButton {
    if (_actionButtonPressed) {
        NSUInteger selectedRow = [self.actionPicker selectedRowInComponent:0];
        if (selectedRow==0)
            _actionButtonPressed(DetailType);
        else if (selectedRow==1)
            _actionButtonPressed(ModelType);
        else if (selectedRow==2)
            _actionButtonPressed(AddWardrobeType);
        else
            _actionButtonPressed(BuyType);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)dismissPressed:(UIButton *)doneButton {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
