//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Nicolas Guerrero on 9/7/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

//Create an init method that will take a size and an array of toppings, and have that method set the internal values of the object when it is initialized.

-(instancetype)initWithSize:(PizzaSize)size and:(NSArray *)toppings {
    if (self = [super init]){
        _pizzaSize = size;
        _pizzaToppings = toppings;
    }return self;
}

@end
