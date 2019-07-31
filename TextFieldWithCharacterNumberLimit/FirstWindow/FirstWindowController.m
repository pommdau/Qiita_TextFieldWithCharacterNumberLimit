//
//  FirstWindowController.m
//  TextFieldWithCharacterNumberLimit
//
//  Created by HIROKI IKEUCHI on 2019/07/29.
//  Copyright © 2019年 hikeuchi. All rights reserved.
//

#import "FirstWindowController.h"

@interface FirstWindowController ()

@end

@implementation FirstWindowController
- (id)init {
    if (self = [super initWithWindowNibName:[self className] owner:self]) {
        
    }
    return self;
}

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (IBAction)closeButtonPush:(id)sender {
    [self close];
}

@end
