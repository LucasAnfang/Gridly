//
//  SharedModel.h
//  Gridly
//
//  Created by luke anfang on 12/31/16.
//  Copyright © 2016 luke anfang. All rights reserved.
//
#import "LocationActivity.h"
#import "FirebaseConnector.h"
@interface SharedModel : NSObject
// Creating the model
+ (instancetype) sharedModel;
// Accessing number of location details in model
- (NSUInteger) numberOfLocationDetails;
// Accessing a location detail
- (LocationActivity *) LocationDetailAtIndex: (NSUInteger)index;
// Inserting a LocationDetail
- (void) insertWithTitle: (NSString *) title
Description: (NSString *) description
Latitude: (NSString *) latitude
Longitude: (NSString *) longitude;
//remove location detail (never used)
- (void) removeLocationDetail;
//remove at index
- (void) removeLocationDetailAtIndex: (NSUInteger) index;
//needed an update function for reseting title and description
- (void) updateWithTitle:(NSString *)title
Description: (NSString *) description atIndex: (NSUInteger) index;
//checks if ther are any location details
-(Boolean) hasLocationDetails;


@end
