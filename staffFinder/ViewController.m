//
//  ViewController.m
//  staffFinder
//
//  Created by Vahid on 17/10/2015.
//  Copyright © 2015 Vahid. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CLLocationManager *locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    
#define IS_OS_8_OR_LATER ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)
    if(IS_OS_8_OR_LATER)
    {
        [locationManager requestAlwaysAuthorization];
        [locationManager requestWhenInUseAuthorization];
    }
    [locationManager startUpdatingLocation];
    
    //Below two lines give you current location (lat-long).
    NSString *Latitude = [NSString stringWithFormat:@"%f",locationManager.location.coordinate.latitude];
    NSLog(@"Lat====%@",Latitude);
    
    NSString *Longitude = [NSString stringWithFormat:@"%f",locationManager.location.coordinate.longitude];
    NSLog(@"Log====%@",Longitude);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
