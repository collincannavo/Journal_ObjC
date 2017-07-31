//
//  EntryController.h
//  Journal_ObjC
//
//  Created by Collin Cannavo on 6/26/17.
//  Copyright © 2017 Collin Cannavo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface EntryController : NSObject

+ (EntryController *)sharedInstance;
- (instancetype)init;

// CRUD functions

- (void)addEntry:(Entry *)entry;
- (void)removeEntry:(Entry *)entry;
- (void)updateWithEntry:(Entry *)entry;

@property (nonatomic, strong, readonly)NSMutableArray *entries;

- (void)createEntriesWithTitle:(NSString *)title text:(NSString *)text timestamp:(NSDate *)timestamp;
- (void)deleteEntries:(Entry *)entry;


@end
