//
//  LotteryEntry.h
//  lottery
//
//  Created by Sergey Shishkin on 6/29/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LotteryEntry : NSObject {
    NSCalendarDate *entryDate;
    int firstNumber;
    int secondNumber;
}

-(id)initWithEntryDate:(NSCalendarDate *)date;
-(void)setEntryDate:(NSCalendarDate *)date;
-(NSCalendarDate *)entryDate;
-(int)firstNumber;
-(int)secondNumber;

@end
