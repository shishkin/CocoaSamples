//
//  RandomController.h
//  Random
//
//  Created by Sergey Shishkin on 6/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RandomController : NSObject {
    IBOutlet NSTextField *textField;
}

- (IBAction)seed:(id)sender;
- (IBAction)generate:(id)sender;
@end
