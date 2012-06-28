//
//  main.m
//  lottery
//
//  Created by Sergey Shishkin on 6/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LotteryEntry.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSCalendarDate *now = [[NSCalendarDate alloc] init];
        srand(time(NULL));
        NSMutableArray *array = [[NSMutableArray alloc] init];
        int i;
        
        for (i = 0; i < 10; i++)
        {
            NSCalendarDate *iWeeksFromNow;
            iWeeksFromNow = [now dateByAddingYears:0
                months:0
                days:(i * 7)
                hours:0
                minutes:0
                seconds:0];
            
            LotteryEntry *newEntry = [[LotteryEntry alloc] init];
            [newEntry prepareRandomNumbers];
            [newEntry setEntryDate:iWeeksFromNow];
            [array addObject:newEntry];
        }
        
        for (LotteryEntry *entry in array)
        {
            NSLog(@"%@", entry);
        }
    }
    return 0;
}

