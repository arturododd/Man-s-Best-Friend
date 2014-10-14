//
//  KDDog.m
//  Man's Best Friend
//
//  Created by Arturo Dodd Vaudrecourt on 4/15/14.
//  Copyright (c) 2014 Dodd.mx. All rights reserved.
//

#import "KDDog.h"

@implementation KDDog

-(void)bark {
    NSLog(@"Woof Woof!");
}

-(void)barkANumberOfTimes:(int)numberOfTimes
{
    for (int bark = 1; bark <= numberOfTimes; bark++) {
        [self bark];
    }
}

-(void)changeBreedToWerewolf
{
    self.breed = @"Werewolf";
}

-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud
{
    if (!isLoud) {
        for (int bark = 1; bark <= numberOfTimes; bark ++) {
            NSLog(@"yip yip");
        }
    }
    else {
        for (int bark = 1; bark <= numberOfTimes; bark ++) {
            NSLog(@"Ruf Ruf");
        }
    }
}

-(int)ageInDogYearsFromAge:(int)regularAge {
    int newAge = regularAge * 7;
    return newAge;
}

@end
