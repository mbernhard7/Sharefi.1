//
//  pageTwoViewController.h
//  ShareFi
//
//  Created by Miles Bernhard on 4/23/15.
//  Copyright (c) 2015 Miles Bernhard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface pageTwoViewController : UIViewController <UIAlertViewDelegate>
{
}
-(IBAction)submit;

@property (strong, nonatomic) IBOutlet UITextField *ssidText;

@property (strong, nonatomic) IBOutlet UITextField *passText;

@end
