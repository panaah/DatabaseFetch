//
//  AddViewController.m
//  Practice Core Data
//
//  Created by Thakur VJ on 05/02/15.
//  Copyright (c) 2015 Thakur VJ. All rights reserved.
//

#import "AddViewController.h"
#import <CoreData/CoreData.h>
#import "AppDelegate.h"

@interface AddViewController ()
{
    AppDelegate *_delegate;
}
@end

@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
       _delegate = [[UIApplication sharedApplication] delegate];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Custom Functions

- (void)resetTextfields {
    self.txtName.text = @"";
    self.txtZip.text = @"";
    self.txtSex.text = @"";
    self.txtPhone.text = @"";
    self.txtCity.text = @"";
}




- (IBAction)btnSaveAndMoreClicked:(id)sender {
    //    if (name && name.length) {
    // Create Entity
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Person" inManagedObjectContext:_delegate.managedObjectContext];
    
    // Initialize Record
    NSManagedObject *record = [[NSManagedObject alloc] initWithEntity:entity insertIntoManagedObjectContext:_delegate.managedObjectContext];
    
    // Populate Record
    [record setValue:self.txtName.text forKey:@"name"];
    [record setValue:self.txtZip.text forKey:@"zipcode"];
    [record setValue:self.txtSex.text forKey:@"sex"];
    [record setValue:self.txtPhone.text forKey:@"phone"];
    //[record setValue:self.txtCity.text forKey:@"city"];
    
    // Save Record
    NSError *error = nil;
    
    if ([_delegate.managedObjectContext save:&error]) {
        // Dismiss View Controller
        //            [self dismissViewControllerAnimated:YES completion:nil];
    } else {
        if (error) {
            NSLog(@"Unable to save record.");
            NSLog(@"%@, %@", error, error.localizedDescription);
        }
        
        // Show Alert View
        [[[UIAlertView alloc] initWithTitle:@"Warning" message:@"Your to-do could not be saved." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
    }
    
    //    } else {
    //        // Show Alert View
    //        [[[UIAlertView alloc] initWithTitle:@"Warning" message:@"Your to-do needs a name." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
    //    }
    
    [self resetTextfields];
    [self.txtName becomeFirstResponder];

}

- (IBAction)btnSaveAndExitClicked:(id)sender {
    //    if (name && name.length) {
    // Create Entity
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Person" inManagedObjectContext:_delegate.managedObjectContext];
    
    // Initialize Record
    NSManagedObject *record = [[NSManagedObject alloc] initWithEntity:entity insertIntoManagedObjectContext:_delegate.managedObjectContext];
    
    // Populate Record
    [record setValue:self.txtName.text forKey:@"name"];
    [record setValue:self.txtZip.text forKey:@"zipcode"];
    [record setValue:self.txtSex.text forKey:@"sex"];
    [record setValue:self.txtPhone.text forKey:@"phone"];
    //[record setValue:self.txtCity.text forKey:@"city"];
    
    // Save Record
    NSError *error = nil;
    
    if ([_delegate.managedObjectContext save:&error]) {
        // Dismiss View Controller
        [self dismissViewControllerAnimated:YES completion:nil];
    } else {
        if (error) {
            NSLog(@"Unable to save record.");
            NSLog(@"%@, %@", error, error.localizedDescription);
        }
        
        // Show Alert View
        [[[UIAlertView alloc] initWithTitle:@"Warning" message:@"Your to-do could not be saved." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
    }

}

- (IBAction)btnCancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];

}
@end
