//
//  LotteryEntry.m
//  lottery
//
//  Created by Sergey Shishkin on 6/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LotteryEntry.h"

@implementation LotteryEntry

- (id)init
{
    return [self initWithEntryDate:[NSCalendarDate calendarDate]];
}

- (id)initWithEntryDate:(NSCalendarDate *)date
{
    self = [super init];
    if (self)
    {
        NSAssert(date != nil, @"date must be non-nil");
        entryDate = [date retain];
        firstNumber = random() % 100 + 1;
        secondNumber = random() % 100 + 1;
    }
    return self;
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
    [entryDate release];
    [super dealloc];
}

- (void)setEntryDate:(NSCalendarDate *)date
{
    [date retain];
    [entryDate release];
    entryDate = date;
}

- (NSCalendarDate *)entryDate
{
    return entryDate;
}

- (int)firstNumber
{
    return firstNumber;
}

- (int)secondNumber
{
    return secondNumber;
}

- (NSString *)description
{
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setTimeStyle:NSDateFormatterNoStyle];
    [df setDateStyle:NSDateFormatterMediumStyle];
    NSString *result = [NSString stringWithFormat:@"% @ = % d and % d",
              [df stringFromDate:entryDate],
              firstNumber, secondNumber];
    [df release];
    return result;
}

@end
