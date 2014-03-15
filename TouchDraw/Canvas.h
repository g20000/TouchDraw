//
//  Canvas.h
//  TouchDraw
//
//  Created by User on 15.03.14.
//  Copyright (c) 2014 User. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BaseCommand;

@interface Canvas : NSObject
-(void) ExecuteCommand:(BaseCommand *)command;
@end
