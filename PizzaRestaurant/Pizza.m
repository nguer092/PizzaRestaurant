//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Nicolas Guerrero on 9/7/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize:(PizzaSize)size toppings:(NSArray<NSString*>*)toppings
{
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Pizza with %@",
            [self.toppings componentsJoinedByString:@", "]];
}

@end
