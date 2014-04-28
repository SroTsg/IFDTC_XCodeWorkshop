//
//  PhotoView.h
//  IFDTC_Workshop
//
//  Created by ISR on 4/28/14.
//  Copyright (c) 2014 ISR. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoView : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>



@property (strong, nonatomic) IBOutlet UIImageView *imageView;


@end
