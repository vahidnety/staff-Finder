//
//  AppDelegate.h
//  staffFinder
//
//  Created by Vahid on 17/10/2015.
//  Copyright © 2015 Vahid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import <CoreLocation/CoreLocation.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (nonatomic, strong)  CLLocationManager *locationManager;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end

