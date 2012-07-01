//
//  LotteryEntry.m
//  lottery
//
//  Created by Sergey Shishkin on 6/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LotteryEntry.h"

@implementation LotteryEntry

- (id)initWithEntryDate:(NSCalendarDate *)date
{
    self = [super init];
    if (self)
    {
        entryDate = date;
        firstNumber = random() % 100 + 1;
        secondNumber = random() % 100 + 1;
    }
    return self;
}

- (void)setEntryDate:(NSCalendarDate *)date
{
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
    return [[NSString alloc] initWithFormat:@"%@ = %d and %d",
        [entryDate descriptionWithCalendarFormat:@"%b %d %Y"],
        firstNumber, secondNumber];
}

@end
