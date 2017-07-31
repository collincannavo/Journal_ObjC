//
//  Entry.h
//  Journal_ObjC
//
//  Created by Collin Cannavo on 6/26/17.
//  Copyright © 2017 Collin Cannavo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text timestamp:(NSDate *)timestamp;

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSDate *timestamp;

@end
