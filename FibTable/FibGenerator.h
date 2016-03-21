//
//  FibGenerator.h
//  FibTable
//
//  Created by Ross Freeman on 3/14/16.
//  Copyright © 2016 Ross Freeman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FibGenerator : NSObject

// Returns the next fib number
-(NSUInteger)getResultForNumber:(NSInteger)num;

// Determines if architecture can handle the next fib number
-(BOOL)hasNextValue:(NSInteger)num;

@end
