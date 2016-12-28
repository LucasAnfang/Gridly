//
//  FirebaseConnector.h
//  Gridly
//
//  Created by luke anfang on 12/27/16.
//  Copyright © 2016 luke anfang. All rights reserved.
//

#import <Foundation/Foundation.h>
@import FirebaseAuth;
@import Firebase; //need to import firebase for authentication
@interface FirebaseConnector : NSObject
+ (instancetype) sharedFirebaseConnector;
- (void) storeUsername: (NSString *) un
             Firstname: (NSString *) fn
              Lastname: (NSString *) ln;
@end
