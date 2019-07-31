//
//  FirstWindowTextField.m
//  TextFieldWithCharacterNumberLimit
//
//  Created by HIROKI IKEUCHI on 2019/07/29.
//  Copyright © 2019年 hikeuchi. All rights reserved.
//

#import "FirstWindowTextField.h"

static const NSUInteger kCharLimit = 5; // 文字数制限

@interface FirstWindowTextField() <NSTextFieldDelegate>
@end

@implementation FirstWindowTextField

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (id) initWithCoder:(NSCoder *)decoder
{
    self = [super initWithCoder:decoder];
    if (self) {
        [self setDelegate: self];
    }
    return self;
}

// MARK:- NSTextFieldDelegate(実際はNSControl由来) Methods
- (void)controlTextDidChange:(NSNotification *)aNotification {
    NSString *newString = [self stringValue];
    if ([newString length] > kCharLimit) {
        [self setStringValue:[newString substringToIndex:kCharLimit]];
    }
}

@end
