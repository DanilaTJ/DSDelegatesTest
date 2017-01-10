//
//  DSDoctor.m
//  DSDelegatesTest
//
//  Created by Danil Shashin on 04/01/2017.
//  Copyright © 2017 Danil Shashin. All rights reserved.
//

#import "DSDoctor.h"


@implementation DSDoctor




#pragma mark - DSPatientDelegate

- (void) patientFeelsBad:(DSPatient*) patient {
    
    NSLog(@"Patient %@ feels bad", patient.name);
    
    if (patient.temperature >= 37.f && patient.temperature <= 39.f) {
        [patient takePill];
    } else if (patient.temperature > 39.f) {
        [patient makeShot];
    } else {
        NSLog(@"Patient %@ should rest", patient.name);
    }
}
- (void) patient:(DSPatient*) patient hasQuestion:(NSString*) question {
    NSLog(@"Patient %@ has a question: %@", patient.name, question);
}


@end
