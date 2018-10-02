//
//  main.m
//  FractionCalc
//
//  Created by Kimberly Stafford on 9/25/18.
//  Copyright © 2018 Kimberly Stafford. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "frac.h"
#import "fracCalc.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool{
        fracCalc *calculator = [[fracCalc alloc] init];
        frac *frac1 = [[frac alloc] init];
        frac *frac2 = [[frac alloc] init];
        
        int frac1Num, frac1Denom;
        int frac2Num, frac2Denom;
        NSLog (@"Please enter fraction1 numerator: ");
        scanf ("%i", &frac1Num);
        NSLog (@"Please enter fraction1 denominator: ");
        scanf ("%i", &frac1Denom);
        [frac1 setNumerator: frac1Num];
        [frac1 setDenominator: frac1Denom];
        calculator.previous = frac1;
        NSLog (@"Your first fraction looks like this: ");
        [calculator.previous print];
        
        int operation;
        NSLog (@"\n Type '0' for addition \n Type '1' for subtraction \n Type '2' for multiplication \n Type '3' for division ");
        scanf ("%i", &operation);
        
        NSLog (@"Please enter fraction2 numerator: ");
        scanf ("%d", &frac2Num);
        NSLog (@"Please enter fraction2 denominator: ");
        scanf ("%i", &frac2Denom);
        
        [frac2 setNumerator: frac2Num];
        [frac2 setDenominator: frac2Denom];
        NSLog (@"Your second fraction looks like this: ");
        [frac2 print];
        
        if (operation == 0){
            [calculator add: frac2];
        } else if (operation == 1){
            [calculator subtract: frac2];
        } else if (operation == 2){
            [calculator multiply: frac2];
        } else if (operation == 3){
            [calculator divide: frac2];
        }
        NSLog (@"\n\nYour answer is: ");
        [calculator.previous print];
        double decimal = calculator.previous.decimalify;
        NSLog (@ "Your answer in decimal form is: %f", decimal);

        
        return 0;  
    }
}
