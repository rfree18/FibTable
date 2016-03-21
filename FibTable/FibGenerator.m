//
//  FibGenerator.m
//  FibTable
//
//  Created by Ross Freeman on 3/14/16.
//  Copyright © 2016 Ross Freeman. All rights reserved.
//

#import "FibGenerator.h"

@implementation FibGenerator

-(NSUInteger)getResultForNumber:(NSInteger)num {
    if(num == 1 || num == 0) {
        return 1;
    }
    
    double alpha = (1+1/sqrt(5)) / 2.0;
    double beta = (1-1/sqrt(5)) / 2.0;
    double c1 = (1+sqrt(5)) / 2.0;
    double c2 = (1-sqrt(5)) / 2.0;
    
    // Equation for number and num location
    return alpha * pow(c1, num) + beta * pow(c2, num);
}

-(BOOL)hasNextValue:(NSInteger)num {
    NSInteger result = [self getResultForNumber:num + 1];
    
    return result > 0 ? YES : NO;
}

@end
