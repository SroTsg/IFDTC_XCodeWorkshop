//
//  GPSViewController.m
//  IFDTC_Workshop
//
//  Created by ISR on 4/2/14.
//  Copyright (c) 2014 ISR. All rights reserved.
//

#import "GPSViewController.h"
#import "Global.h"

@implementation GPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = (id)self;
    locationManager.distanceFilter = kCLDistanceFilterNone;
    locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;
    [locationManager startUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    //No need to do any code...
    // NSLog(@"Got location %f,%f", newLocation.coordinate.latitude,   newLocation.coordinate.longitude);
    
}

- (IBAction)getCoordinates:(id)sender {
    CLLocation *location = [locationManager location];
    
    if (sender) {
        _gpsLatitude.text = [[NSNumber numberWithDouble:location.coordinate.latitude ] stringValue];
        _gpsLongitude.text = [[NSNumber numberWithDouble:location.coordinate.longitude ] stringValue];
        Global *global = [Global instance];
        global.locationCoord = [NSString stringWithFormat:@"%f,%f",location.coordinate.longitude,location.coordinate.latitude];
        
    }
}


@end
