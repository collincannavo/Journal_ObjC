//
//  EntryListTableViewController.m
//  Journal_ObjC
//
//  Created by Collin Cannavo on 6/26/17.
//  Copyright © 2017 Collin Cannavo. All rights reserved.
//

#import "EntryListTableViewController.h"
#import "EntryController.h"
#import "EntryDetailViewController.h"


@interface EntryListTableViewController ()

@end

@implementation EntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [[EntryController sharedInstance].entries count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    Entry *entries = [EntryController sharedInstance].entries [indexPath.row];
    cell.textLabel.text = entries.title;
 
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        Entry *entry = [EntryController sharedInstance].entries[indexPath.row];
        [[EntryController sharedInstance]removeEntry:entry];
        [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"editEntry"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Entry *entry = [EntryController sharedInstance].entries[indexPath.row];
        EntryDetailViewController *vc = (EntryDetailViewController *)segue.destinationViewController;
        vc.entry = entry;
    }

}


@end
