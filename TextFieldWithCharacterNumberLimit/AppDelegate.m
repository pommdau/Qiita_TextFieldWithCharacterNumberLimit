//
//  AppDelegate.m
//  TextFieldWithCharacterNumberLimit
//
//  Created by HIROKI IKEUCHI on 2019/07/29.
//  Copyright © 2019年 hikeuchi. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstWindowController.h"
#import "SecondWindowController.h"

@interface AppDelegate ()
@property (weak) IBOutlet NSWindow *window;
@property (strong) FirstWindowController *firstWindowController;
@property (strong) SecondWindowController *secondWindowController;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)openFirstWindowButtonPush:(id)sender {
    _firstWindowController = [[FirstWindowController alloc] initWithWindowNibName: FirstWindowController.className];
    [_firstWindowController showWindow:self];
}

- (IBAction)openSecontWindowButtonPush:(id)sender {
    _secondWindowController = [[SecondWindowController alloc] initWithWindowNibName: SecondWindowController.className];
    [_secondWindowController showWindow:self];
}


@end
