//
//  Entry.m
//  Journal_ObjC
//
//  Created by Collin Cannavo on 6/26/17.
//  Copyright © 2017 Collin Cannavo. All rights reserved.
//

#import "Entry.h"

@implementation Entry

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text timestamp:(NSDate *)timestamp
{
    
    self = [super init];
    if (self) {
        _title = title;
        _text = text;
        _timestamp = timestamp;
        
    }
    
    return self;
}

@end
