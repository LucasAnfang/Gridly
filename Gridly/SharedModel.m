//
//  SharedModel.m
//  Gridly
//
//  Created by luke anfang on 12/31/16.
//  Copyright © 2016 luke anfang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SharedModel.h"

@interface SharedModel()
@property (strong, nonatomic) FirebaseConnector* firebaseConnector;
@property (strong, nonatomic) NSMutableArray* locationDetails; // all the location details

@end

@implementation SharedModel

- (instancetype)init
{
    self = [super init];
    if (self) {
//        // get the Document directory and set _filepath
//        NSString *rp = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
//        // _filepath includes the plist
//        _fp = [rp stringByAppendingPathComponent:@"LocationDatailsData.plist"];
//        
//        
//        NSMutableArray* locationDetails = [NSMutableArray arrayWithContentsOfFile:_fp];
//        
//        if (!locationDetails) { // no file with null check
//            _locationDetails = [[NSMutableArray alloc] init];
//        } else {
//            _locationDetails = [[NSMutableArray alloc] init];
//            NSDictionary* curr;
//            LocationDetail* locDetail;
//            //retreive data
//            for (curr in locationDetails) {
//                locDetail = [[LocationDetail alloc] initWithDictionary: curr];
//                [_locationDetails addObject: locDetail];
//            }
//        }
    }
    return self;
}

+ (instancetype) sharedModel{
    static SharedModel *_sharedModel = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        // this will be executed once
        _sharedModel = [[self alloc] init];
    });
    return _sharedModel;
}
// Accessing number of location details in model
- (NSUInteger) numberOfLocationDetails{
    return [self.locationDetails count];
}

//get location detail at an index
- (LocationActivity *) LocationDetailAtIndex: (NSUInteger)index{
    if ([self numberOfLocationDetails] < 1) {
        return nil;
    }
    return self.locationDetails[index];
}

- (void) insertWithTitle: (NSString *) title
             Description: (NSString *) description
                Latitude: (NSString *) latitude
               Longitude: (NSString *) longitude{
    [self.locationDetails addObject:[[LocationActivity alloc] initWithTitle:title Description:description Latitude:latitude Longitude:longitude]];
    [self save];
}
//updates title and description values at an index by replacing the object
- (void) updateWithTitle:(NSString *)newTitle
             Description: (NSString *) newDescription atIndex: (NSUInteger) index{
    LocationActivity *original = self.locationDetails[index];
    [self.locationDetails replaceObjectAtIndex:index withObject:[[LocationActivity alloc] initWithTitle:newTitle Description:newDescription Latitude:original.latitude Longitude:original.longitude]];
    
}
//remove at an index
- (void) removeLocationDetailAtIndex: (NSUInteger) index{
    if ([self numberOfLocationDetails] < 1) {
        return;
    }
    [self.locationDetails removeObjectAtIndex:index];
    [self save];
}


//save data to plist
- (void) save {

}
//checks if there are any location details
-(Boolean) hasLocationDetails{
    return [self numberOfLocationDetails] > 0;
}

@end
