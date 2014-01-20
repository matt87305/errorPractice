//
//  MGRViewController.m
//  ErrRoars
//
//  Created by Matt Rosemeier on 1/20/14.
//  Copyright (c) 2014 Matt Rosemeier. All rights reserved.
//

#import "MGRViewController.h"

@interface MGRViewController ()

@end

@implementation MGRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSError *error;
    NSString *getsAnError = [self getStringForInteger:6 error:&error];
    NSLog(@"getsAnError: %@", getsAnError);
    if (error)
    {
        NSLog(@"There be an error: %@", error);
    }
}

- (NSString *)getStringForInteger:(NSInteger)integer error:(NSError **)error
{
    if (integer < 6)
    {
        NSError *errorTown = [[NSError alloc] initWithDomain:@"com.generalErrors.ErrRoars" code:1 userInfo:@{NSLocalizedDescriptionKey:@"Your integers can't be less than 6."}];
        if (error)
        {
            *error = errorTown;
        }
        
        return nil;
    }
    else
    {
        NSString *string = [NSString stringWithFormat:@"your NSInteger was: %d", integer];
        return string;
    }
  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
