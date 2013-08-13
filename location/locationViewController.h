//
//  locationViewController.h
//  location
//
//  Created by Himanshu Bafna on 8/11/13.
//  Copyright (c) 2013 Himanshu Bafna. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface locationViewController : UIViewController <CLLocationManagerDelegate> {
    CLLocationManager *locationManager;
}

@property (nonatomic, weak) IBOutlet UILabel *LatLabel;
@property (nonatomic, weak) IBOutlet UILabel *LonLabel;


@end
