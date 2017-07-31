//
//  EntryDetailViewController.m
//  Journal_ObjC
//
//  Created by Collin Cannavo on 6/26/17.
//  Copyright © 2017 Collin Cannavo. All rights reserved.
//

#import "EntryDetailViewController.h"
#import "EntryController.h"


@interface EntryDetailViewController()

@property (weak, nonatomic) IBOutlet UITextField *entryTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *entryBodyTextField;

@end

@implementation EntryDetailViewController

- (IBAction)saveButtonTapped:(id)sender {
    
    if (_entry) {
        [[EntryController sharedInstance]createEntriesWithTitle:self.entryTitleTextField.text text:self.entryBodyTextField.text timestamp: [[NSDate alloc] init]];
        
    }
    [self.view endEditing:YES];
    [self.view resignFirstResponder];
    
}

- (IBAction)cancelButtonTapped:(id)sender {
    [self.view endEditing:YES];
    [self.view resignFirstResponder];
    
    
}

- (IBAction)clearButtonTapped:(id)sender {
    self.entryTitleTextField.text = @"";
    self.entryBodyTextField.text = @"";
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    [[EntryController sharedInstance]updateWithEntry:_entry];
    
}



@end
