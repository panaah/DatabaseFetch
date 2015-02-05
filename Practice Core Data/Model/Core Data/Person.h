//
//  Person.h
//  Practice Core Data
//
//  Created by Thakur VJ on 04/02/15.
//  Copyright (c) 2015 Thakur VJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Adress;

@interface Person : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * age;
@property (nonatomic, retain) NSString * sex;
@property (nonatomic, retain) NSString * phone;
@property (nonatomic, retain) NSString * zipcode;
@property (nonatomic, retain) Adress *address;

@end
