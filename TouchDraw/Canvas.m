//
//  Canvas.m
//  TouchDraw
//
//  Created by User on 15.03.14.
//  Copyright (c) 2014 User. All rights reserved.
//

#import "Canvas.h"
#import "BaseCommand.h"
#import <CoreGraphics/CoreGraphics.h>

@interface Canvas ()
    @property UIImage *image;
    @property CGContextRef imgContext;
@end

@implementation Canvas
-(void)ExecuteCommand:(BaseCommand *)command
{
    CGContextRef context = UIGraphicsGetCurrentContext();
}
@end