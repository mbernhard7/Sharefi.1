//
//  ViewController.m
//  ShareFi
//
//  Created by Miles Bernhard on 4/23/15.
//  Copyright (c) 2015 Miles Bernhard. All rights reserved.
//

#import "ViewController.h"
#import "Reachability.h"
#import <Parse/Parse.h>

@interface ViewController ()

@end

NSString *ssidInput=@"error";
NSString *passInput=@"error";
NSString *emailInput=@"error";
NSString *accpassInput=@"error";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)getStarted
{
    Reachability *reach = [Reachability reachabilityWithHostname:@"www.google.com"];
    reach.reachableOnWWAN = NO;
    if ([reach isReachable]){
        [self performSegueWithIdentifier:@"onetotwo" sender:self];
    }
    else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Please Connect to Wifi"
                                                        message:@"This app requires a working internet connection, and can not use cellular data until you are registered. If you are connected, try again later, or check that google.com is up."
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
    
}

@end


