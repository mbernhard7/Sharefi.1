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

@property (strong, nonatomic) IBOutlet UITextField *emailText;

@property (strong, nonatomic) IBOutlet UITextField *accpassText;

@property (strong, nonatomic) IBOutlet UITextField *usernameText;


@end
