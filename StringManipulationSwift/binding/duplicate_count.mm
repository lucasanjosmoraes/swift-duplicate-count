//
//  duplicate_count.m
//  StringManipulation
//
//  Created by Lucas dos Anjos Moraes on 28/05/19.
//  Copyright © 2019 Lucas dos Anjos Moraes. All rights reserved.
//

#import "duplicate_count.h"
#include "duplicate_count.hpp"

@implementation StringManipulation

- (size_t) countDuplications : (NSString *) text {
    manipulation::StringManipulation stringManipulation;
    return stringManipulation.duplicateCount([text UTF8String]);
}

@end
