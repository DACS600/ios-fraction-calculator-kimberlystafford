//
//  fracCalc.m
//  FractionCalc
//
//  Created by Kimberly Stafford on 9/25/18.
//  Copyright © 2018 Kimberly Stafford. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "frac.h"
#import "fracCalc.h"

@implementation fracCalc


-(void) add: (frac *) f{
    self.previous.numerator = (self.previous.numerator * f.denominator) + (self.previous.denominator * f.numerator);
    self.previous.denominator = (self.previous.denominator * f.denominator);
    [self.previous simplify];
}
-(void) subtract: (frac *) f{
    self.previous.numerator = (self.previous.numerator * f.denominator) - (self.previous.denominator * f.numerator);
    self.previous.denominator = (self.previous.denominator * f.denominator);
    [self.previous simplify];
}
-(void) multiply: (frac* ) f{
    self.previous.numerator = f.numerator * self.previous.numerator;
    self.previous.denominator = f.denominator * self.previous.denominator;
    [self.previous simplify];
}
-(void) divide:(frac *) f{
    self.previous.numerator = self.previous.numerator * f.denominator;
    self.previous.denominator = f.numerator * self.previous.denominator;
    [self.previous simplify];
}
    
@end

