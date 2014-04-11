//
//  Global.m
//  IFDTC_Workshop
//
//  Created by ISR on 3/21/14.
//  Copyright (c) 2014 ISR. All rights reserved.
//

#import "Global.h"

@implementation Global

static Global *_instance = nil;

+(Global *)instance
{
    if(_instance) return _instance;
    
    @synchronized([Global class])
    {
        if (!_instance)
        {
            _instance = [[self alloc] init];
        }
        return _instance;
    }
    return nil;
}
@end
