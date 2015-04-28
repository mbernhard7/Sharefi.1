//
//  pageTwoViewController.m
//  ShareFi
//
//  Created by Miles Bernhard on 4/23/15.
//  Copyright (c) 2015 Miles Bernhard. All rights reserved.
//

#import "pageTwoViewController.h"
#import "ViewController.h"
#import "pageThreeViewController.h"
#import <SystemConfiguration/CaptiveNetwork.h>
#import "Reachability.h"

@interface pageTwoViewController ()

@end

@implementation pageTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Reachability *reach = [Reachability reachabilityWithHostname:@"www.google.com"];
    reach.reachableOnWWAN = NO;
    if ([reach isReachable]){
        CFArrayRef myArray = CNCopySupportedInterfaces();
        CFDictionaryRef myDict = CNCopyCurrentNetworkInfo(CFArrayGetValueAtIndex(myArray, 0));
        ssidInput= CFDictionaryGetValue(myDict, kCNNetworkInfoKeySSID);
        _ssidText.text=ssidInput;
    }
    else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Please Connect to Wifi"
                                                        message:@"This app requires a working internet connection, and can not use cellular data until you are registered. If you are connected, try again later, or check that google.com is up."
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        [self performSegueWithIdentifier:@"twotoone" sender:self];
    }
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)submit
{
    Reachability *reach = [Reachability reachabilityWithHostname:@"www.google.com"];
    reach.reachableOnWWAN = NO;
    if ([reach isReachable]){
        CFArrayRef myArray = CNCopySupportedInterfaces();
        CFDictionaryRef myDict = CNCopyCurrentNetworkInfo(CFArrayGetValueAtIndex(myArray, 0));
        NSString *currentwifi= CFDictionaryGetValue(myDict, kCNNetworkInfoKeySSID);
        
        if ([_ssidText.text isEqualToString:currentwifi]) {
            if (_passText.text.length >=6) {
            ssidInput= _ssidText.text;
            passInput= _passText.text;
            [self performSegueWithIdentifier:@"twotothree" sender:self];
            }
            else {
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Password Too Short"
                                                                message:@"Please enter valid password."
                                                               delegate:self
                                                      cancelButtonTitle:@"OK"
                                                      otherButtonTitles:nil];
                [alert show];

            }
        }
        else{
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Your SSID Does Not Match"
                                                            message:@"Please make sure your SSID matches the WiFi network you are currently connected to."
                                                           delegate:self
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
            [alert show];
            
        }

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
