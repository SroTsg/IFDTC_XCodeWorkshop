//
//  HTMLPost.m
//  IFDTC_Workshop
//
//  Created by ISR on 4/3/14.
//  Copyright (c) 2014 ISR. All rights reserved.
//

#import "HTMLPost.h"
#import "Global.h"

@implementation HTMLPost

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


- (IBAction)submitPOST:(id)sender {
    Global *global = [Global instance];
    
    NSString *post = [NSString stringWithFormat:@"Age=%d&Human=%@&OpenEnd='%@'&Location='%@'",global.age, global.tfswitch ? @"true" : @"false", global.textViewString, global.locationCoord];
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%d",[postData length]];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    
    [request setURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://ifdtc.azurewebsites.net/api/MobileData"]]];
    [request setHTTPMethod:@"POST"];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [request setValue:@"application/x-www-form-urlencoded; charset=UTF-8" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPBody:postData];
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle: @"HTML POST RESPONSE"
                                                   message: @"Post Sent!"
                                                  delegate: self
                                         cancelButtonTitle:@"OK"
                                         otherButtonTitles:nil];
    
    if (sender){
        NSURLConnection *conn = [[NSURLConnection alloc]initWithRequest:request delegate:self];
    
        if (conn)
        {
            NSLog(@"Connection Successful");
            [alert show];
        }
        else
        {
            NSLog(@"Connection failed");
        }
    }
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
