//
//  LocationActivity.m
//  Gridly
//
//  Created by luke anfang on 12/27/16.
//  Copyright © 2016 luke anfang. All rights reserved.
//

#import "LocationActivity.h"
@interface LocationActivity()
@end

@implementation LocationActivity
//location Activities need title, description,latitude and longitude
- (instancetype) initWithTitle: (NSString *) title
                   Description: (NSString *) description
                      Latitude: (NSString *) latitude
                     Longitude: (NSString *) longitude{
    self = [super init]; //set values
    _activityTitle = title;
    _activityDescription = description;
    _latitude = latitude;
    _longitude = longitude;
    return self;
}
@end
