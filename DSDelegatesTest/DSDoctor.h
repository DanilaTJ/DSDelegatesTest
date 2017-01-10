//
//  DSDoctor.h
//  DSDelegatesTest
//
//  Created by Danil Shashin on 04/01/2017.
//  Copyright © 2017 Danil Shashin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DSPatient.h"

@protocol DSPatientDelegate;


@interface DSDoctor : NSObject <DSPatientDelegate>




@end
