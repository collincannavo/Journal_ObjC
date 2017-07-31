//
//  EntryController.m
//  Journal_ObjC
//
//  Created by Collin Cannavo on 6/26/17.
//  Copyright © 2017 Collin Cannavo. All rights reserved.
//

#import "EntryController.h"

@interface EntryController()

@property (nonatomic, strong) NSMutableArray *entries;

@end


@implementation EntryController


+ (EntryController *)sharedInstance

{
    
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^ {
        sharedInstance = [EntryController new];
    });
    return sharedInstance;
    
}

- (instancetype)init
{
    self = [super init]; {
        _entries = [[NSMutableArray alloc] init];
        
    }
    return self;
}

- (void)createEntriesWithTitle:(NSString *)title text:(NSString *)text timestamp:(NSDate *)timestamp
{
    Entry *entry = [[Entry alloc]initWithTitle:title text:text timestamp:timestamp];
    [self.entries addObject:entry];
    
}

- (void)deleteEntries:(Entry *)entry
{
    [self.entries removeObject:entry];
    
}


//- (NSArray *)entries { return self.entries; }

@end




















