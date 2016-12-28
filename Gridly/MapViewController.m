//
//  MapViewController.m
//  Gridly
//
//  Created by luke anfang on 12/27/16.
//  Copyright © 2016 luke anfang. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()
@property NSString *latitudeVal;
@property NSString *longitudeVal;
@end

@implementation MapViewController
@synthesize locationManager = _locationManager;
@synthesize mapView = _mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.locationManager = [[CLLocationManager alloc] init];
    //[[self.myLocation alloc]init];
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    //    self.locationManager.distanceFilter = kCLLOcati
    self.locationManager.delegate = self;
    [self.locationManager requestWhenInUseAuthorization];
    //start gettting location data
    [self.locationManager startUpdatingLocation];
}
-(void) viewDidAppear:(BOOL)animated{
     [self.locationManager startUpdatingLocation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation{
    //this is used to get the updates of location
    //set the property values of users lat and long
    self.latitudeVal = [NSString stringWithFormat:@"%f",newLocation.coordinate.latitude];
    self.longitudeVal = [NSString stringWithFormat:@"%f",newLocation.coordinate.longitude];
    MKCoordinateRegion region = {{0.0,0.0},{0.0,0.0}};
    region.center.latitude = newLocation.coordinate.latitude;
    region.center.longitude = newLocation.coordinate.longitude; //set a region around the user to get the bounds of the mapKit view
    region.span.latitudeDelta = 0.01f;
    region.span.longitudeDelta = 0.01f;
    [self.mapView setRegion:region animated:YES];
    //add location details to mapview
    //[self refreshMapView];
    //stop updating location to allow user to click on pins in map without the message disapearing on updates
    [self.locationManager stopUpdatingLocation];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
