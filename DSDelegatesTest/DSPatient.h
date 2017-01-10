//
//  DSPatient.h
//  DSDelegatesTest
//
//  Created by Danil Shashin on 04/01/2017.
//  Copyright © 2017 Danil Shashin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol DSPatientDelegate;

@interface DSPatient : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) CGFloat temperature;
@property (assign, nonatomic) CGFloat heartRate;
@property (assign, nonatomic) CGFloat bodyPressure;


@property (weak, nonatomic) id <DSPatientDelegate> delegate;

- (BOOL) howAreYou;
- (void) takePill;
- (void) makeShot;



@end



// Delegate DSPatienDelegate
#pragma mark - DSPatientDalegate

@protocol DSPatientDelegate <NSObject>

@required

- (void) patientFeelsBad:(DSPatient*) patient;
- (void) patient:(DSPatient*) patient hasQuestion:(NSString*) question;

@optional

@end
