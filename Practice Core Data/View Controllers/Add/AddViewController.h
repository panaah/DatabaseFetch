//
//  AddViewController.h
//  Practice Core Data
//
//  Created by Thakur VJ on 05/02/15.
//  Copyright (c) 2015 Thakur VJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UITextField *txtPhone;
@property (weak, nonatomic) IBOutlet UITextField *txtSex;
@property (weak, nonatomic) IBOutlet UITextField *txtZip;
@property (weak, nonatomic) IBOutlet UITextField *txtCity;


- (IBAction)btnSaveAndMoreClicked:(id)sender;

- (IBAction)btnSaveAndExitClicked:(id)sender;

- (IBAction)btnCancel:(id)sender;

@end
