//
//  RandomController.m
//  Random
//
//  Created by Sergey Shishkin on 6/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RandomController.h"

@implementation RandomController

- (IBAction)generate:(id)sender {
    int generated = (int)(random() % 100) + 1;
    NSLog(@"generated = %d", generated);
    [textField setIntValue:generated];
}

- (IBAction)seed:(id)sender {
    srandom((unsigned)time(NULL));
    [textField setStringValue:@"Generator seeded"];
}

- (void)awakeFromNib {
    NSDate *now = [NSDate date];
    [textField setObjectValue:now];
}

@end
