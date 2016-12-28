//
//  ErrorMessageUtility.h
//  Gridly
//
//  Created by luke anfang on 12/27/16.
//  Copyright © 2016 luke anfang. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface ErrorMessageUtility : NSObject
// Creating the model
+ (instancetype) sharedEMUModel;
- (void) displayErrorMessage: (NSString *) message;
@end
