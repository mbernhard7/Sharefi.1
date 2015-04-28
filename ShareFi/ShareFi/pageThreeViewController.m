//
//  pageThreeViewController.m
//  ShareFi
//
//  Created by Miles Bernhard on 4/26/15.
//  Copyright (c) 2015 Miles Bernhard. All rights reserved.
//

#import "pageThreeViewController.h"
#import "ViewController.h"

@interface pageThreeViewController ()

@end

@implementation pageThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _p3label.text=[NSString stringWithFormat:@"SSID: %@, Password: %@", ssidInput, passInput];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreat
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
