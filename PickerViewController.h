//
//  PickerViewController.h
//  IFDTC_Workshop
//
//  Created by ISR on 3/21/14.
//  Copyright (c) 2014 ISR. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) NSArray *age;

@end
