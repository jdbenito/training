//
//  Person.h
//  Training
//
//  Created by JD Benito on 2015-01-05.
//  Copyright (c) 2015 Hybrid Forge. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString *_firstName;
    NSString *_lastName;
    NSInteger _age;
}

+ (NSArray *)testData1;         // Returns an array of Person objects
+ (NSArray *)testData2;         // Returns an array of Person objects
+ (Person *)personWithFirstName:(NSString *)firstName_ withLastName:(NSString *)lastName_ andAge:(NSInteger)age_;

- (NSString *)fullName;
- (NSString *)displayAge;

@end
