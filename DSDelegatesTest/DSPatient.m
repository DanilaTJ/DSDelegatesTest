//
//  DSPatient.m
//  DSDelegatesTest
//
//  Created by Danil Shashin on 04/01/2017.
//  Copyright © 2017 Danil Shashin. All rights reserved.
//

#import "DSPatient.h"

@implementation DSPatient


- (BOOL) howAreYou {
    BOOL iFeelsGood = arc4random() % 2;
    
    if (!iFeelsGood) {
        [self.delegate patientFeelsBad:self];
    } 
    
    return iFeelsGood;
}

- (void) takePill {
    NSLog(@"%@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"%@ make a shot", self.name);
}


- (BOOL) feelsBad {
    BOOL bad = arc4random() % 2;
    
    if (bad) {
        [self.delegate patientFeelsBad:self];
    }
    
    return bad;
}


@end
