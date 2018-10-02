//
//  frac.m
//  FractionCalc
//
//  Created by Kimberly Stafford on 9/25/18.
//  Copyright © 2018 Kimberly Stafford. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "frac.h"

@implementation frac

-(id) init {
    self = [super init];

    if (self) {
        _numerator = 1;
        _denominator= 1;
    }
    return self;
}

-(void) print {
    NSLog (@"%i/%i", self.numerator, self.denominator);
}

-(void) simplify {
    int u = self.numerator;
    int v = self.denominator;
    int temp;
    
    if (u == 0)
        return;
    else if (u <0)
        u = -u;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    self.numerator /= u;
    self.denominator /= u;
}
-(double) decimalify {
    return (double) self.numerator / self.denominator;
}
@end
