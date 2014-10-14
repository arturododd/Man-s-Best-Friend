//
//  KDDog.h
//  Man's Best Friend
//
//  Created by Arturo Dodd Vaudrecourt on 4/15/14.
//  Copyright (c) 2014 Dodd.mx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KDDog : NSObject

@property (nonatomic) int age;
@property (nonatomic, strong) NSString *breed;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *name;

-(void)bark;
-(void)barkANumberOfTimes:(int)numberOfTimes;
-(void)changeBreedToWerewolf;
-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;
-(int)ageInDogYearsFromAge:(int)regularAge;

@end