//
//  Staff+CoreDataProperties.h
//  SFC Talon
//
//  Created by Waqar on 3/21/16.
//  Copyright © 2016 Intagleo Systems. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Staff.h"

NS_ASSUME_NONNULL_BEGIN

@interface Staff (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *designation;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *information;
@property (nullable, nonatomic, retain) NSString *email;
@property (nullable, nonatomic, retain) NSString *phone;

@end

NS_ASSUME_NONNULL_END
