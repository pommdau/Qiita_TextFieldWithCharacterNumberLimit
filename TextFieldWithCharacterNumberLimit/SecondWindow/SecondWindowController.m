//
//  SecondWindowController.m
//  TextFieldWithCharacterNumberLimit
//
//  Created by HIROKI IKEUCHI on 2019/07/29.
//  Copyright © 2019年 hikeuchi. All rights reserved.
//

#import "SecondWindowController.h"
#import "CustomTextFieldFormatter.h"

@interface SecondWindowController ()

@end

@implementation SecondWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (id)init {
    if (self = [super initWithWindowNibName:[self className] owner:self]) {
        
    }
    return self;
}

- (IBAction)closeButtonPush:(id)sender {
    [self close];
}

@end
