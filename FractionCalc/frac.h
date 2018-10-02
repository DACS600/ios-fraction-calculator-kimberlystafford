//
//  frac.h
//  FractionCalc
//
//  Created by Kimberly Stafford on 9/25/18.
//  Copyright © 2018 Kimberly Stafford. All rights reserved.
//

#ifndef frac_h
#define frac_h
#endif /* frac_h */


#import <Foundation/Foundation.h>

@interface frac: NSObject

@property int numerator;
@property int denominator;

-(void) print;
-(void) simplify;
-(double) decimalify;


@end
