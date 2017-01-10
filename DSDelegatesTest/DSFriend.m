//
//  DSFriend.m
//  DSDelegatesTest
//
//  Created by Danil Shashin on 10/01/2017.
//  Copyright © 2017 Danil Shashin. All rights reserved.
//

#import "DSFriend.h"

@implementation DSFriend


#pragma mark - DSPatientDelegate

- (void) patientFeelsBad:(DSPatient*) patient {
    
    NSLog(@"Patient %@ feels bad", patient.name);
    
    if (patient.temperature >= 36.7f) {
        [patient takePill];
    } else if (patient.temperature < 36.7f) {
        [patient makeShot];
    } else {
        NSLog(@"Patient %@ is Ok", patient.name);
    }
}

- (void) patient:(DSPatient*) patient hasQuestion:(NSString*) question {
    NSLog(@"Patient %@ has a question: %@", patient.name, question);
}


- (void) patientDoesntFeelsGood:(DSPatient*) patient {
    NSLog(@"Patien %@ doesn't feels good. All will be Ok, we need time", patient.name);
}

@end
