//
//  ErrorMessageUtility.m
//  Gridly
//
//  Created by luke anfang on 12/27/16.
//  Copyright © 2016 luke anfang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ErrorMessageUtility.h"

@interface ErrorMessageUtility()

@end

@implementation ErrorMessageUtility

- (instancetype)init
{
    self = [super init];
    return self;
}

+ (instancetype) sharedEMUModel{
    static ErrorMessageUtility *_sharedModel = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        // this will be executed once
        _sharedModel = [[self alloc] init];
    });
    return _sharedModel;
}
// Accessing number of location details in model
-(void)displayErrorMessage:(NSString*)message{
//    //alert if there is an error
//    UIAlertController *alertController = [UIAlertController
//                                          alertControllerWithTitle:@"Invalid Signout"
//                                          message:message
//                                          preferredStyle:UIAlertControllerStyleAlert];
//    UIAlertAction *okAction = [UIAlertAction
//                               actionWithTitle:@"Ok"
//                               style:UIAlertActionStyleCancel
//                               handler:^(UIAlertAction *action) { /* nothing */ }];
//    [alertController addAction:okAction];
//    [self presentViewController:alertController animated:YES completion:nil];
}
@end
