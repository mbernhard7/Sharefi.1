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
 }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)submit
{
                if (_accpassText.text.length >=6) {
                    if (_emailText.text.length >=5) {
                        emailInput= _emailText.text;
                        accpassInput= _accpassText.text;
            [self performSegueWithIdentifier:@"twotothree" sender:self];
                    }
                    }

  
}

@end
