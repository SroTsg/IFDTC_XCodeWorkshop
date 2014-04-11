//
//  PickerViewController.m
//  IFDTC_Workshop
//
//  Created by ISR on 3/21/14.
//  Copyright (c) 2014 ISR. All rights reserved.
//

#import "PickerViewController.h"
#import "Global.h"


@interface PickerViewController ()

@end

@implementation PickerViewController



-(void) viewDidLoad
{
    [super viewDidLoad];
    _age  = @[ @"25", @"26", @"27",
                        @"28", @"29", @"30"];
    Global *global = [Global instance];
    if (global.age > 0)
    {
    [_picker selectRow:(global.age-25) inComponent:0 animated:YES];
    }
    
}


- (NSInteger)numberOfComponentsInPickerView:
(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _age.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _age[row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row
      inComponent:(NSInteger)component
{
    Global *global = [Global instance];
    global.age = row+25;

}

@end
