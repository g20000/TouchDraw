//
//  ApplyCommand.h
//  TouchDraw
//
//  Created by User on 15.03.14.
//  Copyright (c) 2014 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Canvas.h"
@interface BaseCommand : NSObject
- (void)ApplyToContext:(CGContextRef)context;
@end
