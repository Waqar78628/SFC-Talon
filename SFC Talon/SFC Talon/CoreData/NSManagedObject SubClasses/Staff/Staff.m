//
//  Staff.m
//  SFC Talon
//
//  Created by Waqar on 3/21/16.
//  Copyright © 2016 Intagleo Systems. All rights reserved.
//

#import "Staff.h"
#import "AppDelegate.h"

@implementation Staff

// Insert code here to add functionality to your managed object subclass

+(void)saveStaff:(NSDictionary *)staffInfo
{
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    Staff *staff = [NSEntityDescription
                          insertNewObjectForEntityForName:@"Staff"
                          inManagedObjectContext:context];

    staff.name        = [staffInfo objectForKey:@"name"];
    staff.designation = [staffInfo objectForKey:@"designation"];
    staff.information = [staffInfo objectForKey:@"information"];
    staff.email       = [staffInfo objectForKey:@"email"];
    staff.phone       = [staffInfo objectForKey:@"phone"];

    NSError *error;
    if (![context save:&error])
    {
        NSLog(@"couldn't save the staff: %@", [error localizedDescription]);
    }
}

+(NSMutableArray *)fetchAllStaffMembers
{
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    // Test listing all FailedBankInfos from the store
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Notifications"
                                              inManagedObjectContext:context];
    [fetchRequest setEntity:entity];
    NSError *error;
    NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
    
    NSMutableArray *staffMemebers = [[NSMutableArray alloc] init];
    
    
    for (Staff *staff in fetchedObjects)
    {
        if (staff)
        {
            NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:
                                                                                    staff.name,@"name" ,
                                                                                    staff.designation,@"designation",
                                                                                    staff.information,@"information",
                                                                                    staff.email,@"email",
                                                                                    staff.phone,@"phone",
                                                                                    nil];
            [staffMemebers addObject:dictionary];
        }
    }
    return  staffMemebers;
}

@end
