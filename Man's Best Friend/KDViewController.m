//
//  KDViewController.m
//  Man's Best Friend
//
//  Created by Arturo Dodd Vaudrecourt on 4/15/14.
//  Copyright (c) 2014 Dodd.mx. All rights reserved.
//

#import "KDViewController.h"
#import "KDDog.h"

@interface KDViewController ()

@end

@implementation KDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.currentIndex = 0;
    
    KDDog *myDog = [[KDDog alloc] init];
    myDog.name = @"Nana";
    myDog.breed = @"St. Bernard";
    myDog.age = 1;
    myDog.image = [UIImage imageNamed:@"St.Bernard.jpg"];
    
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    
    KDDog *secondDog = [[KDDog alloc] init];
    secondDog.name = @"Wishbone";
    secondDog.breed = @"Jack Russell Terrier";
    secondDog.age = 2;
    secondDog.image = [UIImage imageNamed:@"JRT.jpg"];
    
    KDDog *thirdDog = [[KDDog alloc] init];
    thirdDog.name = @"Lassie";
    thirdDog.breed = @"Collie";
    thirdDog.age = 3;
    thirdDog.image = [UIImage imageNamed:@"BorderCollie.jpg"];
    
    KDDog *fourthDog = [[KDDog alloc] init];
    fourthDog.name = @"Angel";
    fourthDog.breed = @"Greyhound";
    fourthDog.age = 4;
    fourthDog.image = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
    
//    NSLog(@"My dog is named %@ and its' age is %i the breed is %@", myDog.name, myDog.age, myDog.breed);
//    [myDog barkANumberOfTimes:2];
//    NSLog(@"%@", myDog.breed);
//    [myDog changeBreedToWerewolf];
//    NSLog(@"%@", myDog.breed);
    
    [myDog barkANumberOfTimes:2 loudly:YES];
    
    int dogYears = [myDog ageInDogYearsFromAge:myDog.age];
    NSLog(@"In dog years, my dog is %i", dogYears);
    
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)printHelloWorld {

    NSLog(@"Hello World");
    
}

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender {
    
    KDDog *randomDog;
    
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;
    NSLog(@"first Random index is %i and current Random is %i", randomIndex, self.currentIndex);
    
    while (randomIndex == self.currentIndex) {
        
        randomIndex = arc4random() % numberOfDogs;
        
    }
    NSLog(@"second random index is %i", randomIndex);
    
    randomDog = [self.myDogs objectAtIndex:randomIndex];
    
    self.currentIndex = randomIndex;

    
//    KDDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
    
//    self.myImageView.image = randomDog.image;
//    self.nameLabel.text = randomDog.name;
//    self.breedLabel.text = randomDog.breed;
    
    [UIView transitionWithView:self.view duration:2.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image = randomDog.image;
        self.nameLabel.text = randomDog.name;
        self.breedLabel.text = randomDog.breed;
        int dogYears = [randomDog ageInDogYearsFromAge:randomDog.age];
        NSLog(@"In dog years, my dog is %i", dogYears);
    } completion:^(BOOL finished) {
        
    }];
    
    
    sender.title = @"Show me another";
}





















@end
