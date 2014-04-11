//
//  TextViewController.m
//  IFDTC_Workshop
//
//  Created by ISR on 4/2/14.
//  Copyright (c) 2014 ISR. All rights reserved.
//

#import "TextViewController.h"
#import "Global.h"

@implementation TextViewController

-(void) viewDidLoad
{
    [super viewDidLoad];
    Global *global = [Global instance];
    _textView.text = global.textViewString;
}

- (IBAction)textSave:(id)sender {
    Global *global = [Global instance];
    if (sender) {
        global.textViewString = _textView.text;
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}


@end
