//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Nicolas Guerrero on 9/7/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, PizzaSize) {
    PizzaSizeSmall,
    PizzaSizeMedium,
    PizzaSizeLarge
};


@interface Pizza : NSObject


@property (nonatomic,assign,readonly) PizzaSize size;

@property (nonatomic,strong,readonly) NSArray<NSString*>* toppings;

- (instancetype)initWithSize:(PizzaSize)size toppings:(NSArray<NSString*>*)toppings;

@end
