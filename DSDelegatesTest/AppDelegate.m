//
//  AppDelegate.m
//  DSDelegatesTest
//
//  Created by Danil Shashin on 04/01/2017.
//  Copyright © 2017 Danil Shashin. All rights reserved.
//

#import "AppDelegate.h"
#import "DSDoctor.h"
#import "DSPatient.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    DSPatient* patient1 = [[DSPatient alloc] init];
    patient1.name = @"Vova";
    patient1.temperature = 36.6f;
    patient1.heartRate = 85.f;
    patient1.bodyPressure = 120.f;
    
    
    DSPatient* patient2 = [[DSPatient alloc] init];
    patient2.name = @"Petya";
    patient2.temperature = 42.f;
    patient2.heartRate = 110.f;
    patient2.bodyPressure = 131.f;
    
    
    DSPatient* patient3 = [[DSPatient alloc] init];
    patient3.name = @"Stepa";
    patient3.temperature = 37.f;
    patient3.heartRate = 67.f;
    patient3.bodyPressure = 109.f;
    
    
    DSPatient* patient4 = [[DSPatient alloc] init];
    patient4.name = @"Kirya";
    patient4.temperature = 39.7f;
    patient4.heartRate = 130.f;
    patient4.bodyPressure = 90.f;
    
    
    DSPatient* patient5 = [[DSPatient alloc] init];
    patient5.name = @"Igor";
    patient5.temperature = 41.1f;
    patient5.heartRate = 147.f;
    patient5.bodyPressure = 139.f;
    
    
    DSDoctor* doctor = [[DSDoctor alloc] init];
    
    patient1.delegate = doctor;
    patient2.delegate = doctor;
    patient3.delegate = doctor;
    patient4.delegate = doctor;
    patient5.delegate = doctor;
    
    /*
    NSLog(@"%@ are you ok? %@", patient1.name, [patient1 howAreYou] ? @"YES" : @"NO");
    NSLog(@"%@ are you ok? %@", patient2.name, [patient2 howAreYou] ? @"YES" : @"NO");
    NSLog(@"%@ are you ok? %@", patient3.name, [patient3 howAreYou] ? @"YES" : @"NO");
    NSLog(@"%@ are you ok? %@", patient4.name, [patient4 howAreYou] ? @"YES" : @"NO");
    NSLog(@"%@ are you ok? %@", patient5.name, [patient5 howAreYou] ? @"YES" : @"NO");
    */
  
    
    NSArray* arrayWithPatients = [NSArray arrayWithObjects:patient1, patient2, patient3, patient4, patient5, nil];
    
    for (id obj in arrayWithPatients) {
        if ([obj isKindOfClass:[DSPatient class]]) {
            DSPatient* patient = (DSPatient*) obj;
            NSLog(@"%@ are you ok? %@ \nDo you feel good? %@", patient.name, [patient howAreYou] ? @"YES" : @"NO", [patient feelsBad] ? @"YES" : @"NO");
        }
    }

    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
