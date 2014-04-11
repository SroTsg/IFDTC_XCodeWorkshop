//
//  ViewController.m
//  IFDTC_Workshop
//
//  Created by ISR on 3/21/14.
//  Copyright (c) 2014 ISR. All rights reserved.
//

#import "ViewController.h"
#import "Global.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize tfswitchvar;

- (void)viewDidLoad
{
    Global *global = [Global instance];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    if (global.tfswitch)
    {
        self.TFState.text = @"True";
        [tfswitchvar setOn:YES];
        
    }
    else
    {
        self.TFState.text = @"False";
        [tfswitchvar setOn:NO];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)TrueFalse:(id)sender {
    Global *global = [Global instance];
    if ([sender isOn])
    {
        global.tfswitch = true;
        self.TFState.text = @"True";
    }
    else
    {
        global.tfswitch = false;
        self.TFState.text = @"False";
    }
}

@end
