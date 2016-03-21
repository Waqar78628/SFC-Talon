//
//  Staff.h
//  SFC Talon
//
//  Created by Waqar on 3/21/16.
//  Copyright © 2016 Intagleo Systems. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface Staff : NSManagedObject

// Insert code here to declare functionality of your managed object subclass

+(void)saveStaff:(NSDictionary *)staffInfo;
+(NSMutableArray *)fetchAllStaffMembers;

@end

NS_ASSUME_NONNULL_END

#import "Staff+CoreDataProperties.h"
