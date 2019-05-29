//
//  duplicate_count.h
//  StringManipulation
//
//  Created by Lucas dos Anjos Moraes on 28/05/19.
//  Copyright © 2019 Lucas dos Anjos Moraes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StringManipulation: NSObject

// Methods with the "-" sign indicates that this method need of a instance of the class to be called
// Methods with the "+" sign indicates that this method doesn't need of a instance of the class to be called
- (size_t) countDuplications: (NSString *) text;

@end
