//
//  InterfaceController.m
//  Watch-Thing-2.0 WatchKit Extension
//
//  Created by Stephen Stucky on 8/7/15.
//  Copyright (c) 2015 Stephen Stucky. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
@property (weak, nonatomic) IBOutlet WKInterfaceButton *animationButton;
@property (weak, nonatomic) IBOutlet WKInterfaceImage *animationFrame;

@end


@implementation InterfaceController

int count = 0;

- (IBAction)showAnimation {
    if(count % 2 == 0) {
        [ _animationFrame setHidden:NO];
        _animationButton.title = @"Hide Animation";
    } else {
         [_animationFrame setHidden:YES];
         _animationButton.title = @"Show Animation";
    }
    
    count = count + 1;
}


- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
    [ _animationFrame setHidden:YES];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



