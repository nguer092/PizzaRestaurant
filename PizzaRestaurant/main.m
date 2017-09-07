//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "Kitchen.h"
#define pizzaSizeString(enum) [@[@"small",@"medium",@"large"] objectAtIndex:enum]

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
//        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            NSString *userInputtedSize = [commandWords objectAtIndex:0];
            
            PizzaSize size;
            if ([userInputtedSize isEqualToString:@"small"]) {
                size = small;
            } else if ([userInputtedSize isEqualToString:@"medium"]) {
                size = medium;
            } else {
                size = large;
            }
            
            // And then send some message to the kitchen...
            Pizza *order = [[Pizza alloc] initWithSize:size and:[commandWords objectAtIndex:1]];
            NSLog(@"Order was %@ %@", pizzaSizeString(order.pizzaSize), order.pizzaToppings);
            
        }
    }
    return 0;
}

