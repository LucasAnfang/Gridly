//
//  FirebaseConnector.m
//  Gridly
//
//  Created by luke anfang on 12/27/16.
//  Copyright © 2016 luke anfang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FirebaseConnector.h"

@interface FirebaseConnector()
@property (strong, nonatomic) FIRDatabaseReference *ref;
@end

@implementation FirebaseConnector

- (instancetype)init
{
    self = [super init];
    self.ref = [[FIRDatabase database] reference];
    return self;
}

+ (instancetype) sharedFirebaseConnector{
    static FirebaseConnector *_sharedFirebaseConnector = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        // this will be executed once
        _sharedFirebaseConnector = [[self alloc] init];
    });
    return _sharedFirebaseConnector;
}

- (void) storeUsername: (NSString *) un
             Firstname: (NSString *) fn
             Lastname: (NSString *) ln{
        [[[[_ref child:@"users"] child:[[[FIRAuth auth] currentUser]uid]] child:@"username"] setValue:un];
    [[[[_ref child:@"users"] child:[[[FIRAuth auth] currentUser]uid]] child:@"firstname"] setValue:fn];
    [[[[_ref child:@"users"] child:[[[FIRAuth auth] currentUser]uid]] child:@"lastname"] setValue:ln];
//    [[[_ref child:@"users"] child:[[[FIRAuth auth] currentUser]uid]]
//     setValue:@{@"firstname": fn}];
//    [[[_ref child:@"users"] child:[[[FIRAuth auth] currentUser]uid]]
 //    setValue:@{@"lastname": ln}]; //This overwrites at that location
}

- (void) followUser: (NSString *) ouid
{
    [[[[_ref child:@"users"] child:[[[FIRAuth auth] currentUser]uid]] child:@"following"] setValue: ouid];
    //need to keep fixing this
}


@end
