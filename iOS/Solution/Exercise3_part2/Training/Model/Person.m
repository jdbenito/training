//
//  Person.m
//  Training
//
//  Created by JD Benito on 2015-01-05.
//  Copyright (c) 2015 Hybrid Forge. All rights reserved.
//

#import "Person.h"

@interface Person()
- (id)initWithFirstName:(NSString *)firstName_ lastName:(NSString *)lastName_ age:(NSInteger)age_;
@end

@implementation Person

+ (NSArray *)testData1 {
    return @[ [Person personWithFirstName:@"Joe" withLastName:@"Brown" andAge:25],
              [Person personWithFirstName:@"Walter" withLastName:@"White" andAge:27],
              [Person personWithFirstName:@"Paul" withLastName:@"McCartney" andAge:25],
              [Person personWithFirstName:@"George" withLastName:@"Bush" andAge:12],
              [Person personWithFirstName:@"Barack" withLastName:@"Obama" andAge:29] ];
}

+ (NSArray *)testData2 {
    return @[ [Person personWithFirstName:@"Daffy" withLastName:@"Duck" andAge:25],
              [Person personWithFirstName:@"Mickey" withLastName:@"Mouse" andAge:27],
              [Person personWithFirstName:@"Roger" withLastName:@"Rabbit" andAge:25],
              [Person personWithFirstName:@"Bugs" withLastName:@"Bunny" andAge:12],
              [Person personWithFirstName:@"Speedy" withLastName:@"Gonzales" andAge:29] ];
}

+ (Person *)personWithFirstName:(NSString *)firstName_ withLastName:(NSString *)lastName_ andAge:(NSInteger)age_ {
    return [[Person alloc] initWithFirstName:firstName_ lastName:lastName_ age:age_];
}

- (id)initWithFirstName:(NSString *)firstName_ lastName:(NSString *)lastName_ age:(NSInteger)age_ {
    self = [super init];
    if (self != nil) {
        _firstName = [firstName_ copy];
        _lastName = [lastName_ copy];
        _age = age_;
    }
    return self;
}

- (NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@", _firstName, _lastName];
}

- (NSString *)displayAge {
    if (_age > 1) {
        return [NSString stringWithFormat:@"%ld years old", (long)_age];
    }
    if (_age == 1) {
        return @"1 year old";
    }
    return @"-";
}

@end
