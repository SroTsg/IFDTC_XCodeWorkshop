//
//  GPSViewController.h
//  IFDTC_Workshop
//
//  Created by ISR on 4/2/14.
//  Copyright (c) 2014 ISR. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>


@interface GPSViewController : UIViewController <CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
}
@property (weak, nonatomic) IBOutlet UILabel *gpsLongitude;
@property (weak, nonatomic) IBOutlet UILabel *gpsLatitude;
@end
