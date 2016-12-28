//
//  MapViewController.h
//  Gridly
//
//  Created by luke anfang on 12/27/16.
//  Copyright © 2016 luke anfang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
@import Firebase;
@import FirebaseAuth;
@interface MapViewController : UIViewController <CLLocationManagerDelegate>{
    MKMapView *mapView;
}
@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property (nonatomic, strong) CLLocationManager *locationManager;
@end
