//
//  locationViewController.m
//  location
//
//  Created by Himanshu Bafna on 8/11/13.
//  Copyright (c) 2013 Himanshu Bafna. All rights reserved.
//

#import "locationViewController.h"

@interface locationViewController ()

@end

@implementation locationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    
    [locationManager startUpdatingLocation];
    //float lattitude = locationManager.location.coordinate.latitude;
    //float longitude = locationManager.location.coordinate.longitude;
    self.LatLabel.text = [NSString stringWithFormat:@"%0.002f",locationManager.location.coordinate.latitude];
    self.LonLabel.text = [NSString stringWithFormat:@"%0.002f", locationManager.location.coordinate.longitude];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
