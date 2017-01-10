//
//  DSFriend.h
//  DSDelegatesTest
//
//  Created by Danil Shashin on 10/01/2017.
//  Copyright © 2017 Danil Shashin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DSPatient.h"

@protocol DSPatientDelegate;

@interface DSFriend : NSObject <DSPatientDelegate>

@end
