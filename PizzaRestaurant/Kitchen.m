//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

+ (PizzaSize)parsePizzaSize:(NSString*)sizeString
{
    if ([sizeString isEqualToString:@"small"]) {
        return PizzaSizeSmall;
    }
    if ([sizeString isEqualToString:@"medium"]) {
        return PizzaSizeMedium;
    }
    // default to large pizza, even if the size entered was garbage
    return PizzaSizeLarge;
}

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    if (self.delegate != nil) {
        // Need to check nil, because we should be able to make a pizza without a delegate
        // but nil delegate -> calling shouldMakePizza... returns nil which is false
        // so we want to differentiate between no delegate and delegate returning NO
        if (![self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
            return nil;
        }
        
        if ([self.delegate kitchenShouldUpgradeOrder:self]) {
            size = PizzaSizeLarge;
        }
    }
    
    Pizza *pizza = [[Pizza alloc] initWithSize:size toppings:toppings];
    
    if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
        [self.delegate kitchenDidMakePizza:pizza];
    }
    
    return pizza;
}

@end
