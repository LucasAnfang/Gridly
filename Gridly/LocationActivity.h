//
//  LocationActivity.h
//  Gridly
//
//  Created by luke anfang on 12/27/16.
//  Copyright © 2016 luke anfang. All rights reserved.
//

#import <Foundation/Foundation.h>
//location activities need title, description,latitude and longitude
@interface LocationActivity : NSObject
@property (strong, nonatomic) NSString* activityTitle;
@property (strong, nonatomic) NSString* activityDescription;
@property (nonatomic, readonly) NSString* latitude;
@property (nonatomic, readonly) NSString* longitude;

//initializer methods
- (instancetype) initWithTitle: (NSString *) title
                   Description: (NSString *) description
                      Latitude: (NSString *) latitude
                     Longitude: (NSString *) longitude;

@end
