//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Nicolas Guerrero on 9/7/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject


//Start by defining a pizza object. Let's give it a couple methods: one that returns a value for its size (small, medium, large) and another that gives its toppings (an array of strings, like “ham, pineapple, cheese”). Make an enum type to represent the size.

typedef enum pizzasizes {
    small,
    medium,
    large
}PizzaSize;

@property (nonatomic) PizzaSize pizzaSize;

@property (nonatomic, strong) NSArray * pizzaToppings;

-(instancetype)initWithSize:(PizzaSize)size and:(NSArray *)toppings;


@end
