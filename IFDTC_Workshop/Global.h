//
//  Global.h
//  IFDTC_Workshop
//
//  Created by ISR on 3/21/14.
//  Copyright (c) 2014 ISR. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Global : NSObject
{
    int age;
    bool tfswitch;
    NSString *textViewString;
    NSString *locationCoord;
}

@property (nonatomic) int age;
@property (nonatomic) bool tfswitch;
@property (nonatomic) NSString *textViewString;
@property (nonatomic) NSString *locationCoord;

+ (Global *)instance;

@end
