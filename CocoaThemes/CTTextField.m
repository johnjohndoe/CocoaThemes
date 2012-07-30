//
//  CTTextField.m
//  CocoaThemes
//
//  Created by Tobias Preuss on 30.07.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CTTextField.h"

#pragma mark
@interface CTTextField()
#pragma mark
- (void)customize;
- (NSTextView*)updateInsertionPointColor;
@end


#pragma mark
@implementation CTTextField
#pragma mark

- (id)initWithCoder:(NSCoder*)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self customize];
    }
    return self;
}

- (id)initWithFrame:(NSRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self customize];
    }
    return self;
}

- (void)awakeFromNib {
	[self updateInsertionPointColor];
	[self customize];
}


#pragma mark - NSTextDelegate

- (void)textDidBeginEditing:(NSNotification*)notification {
	[super textDidBeginEditing:notification];
	// Called when the user inputs a character.
	[self customize];
	[[self updateInsertionPointColor] setDelegate:self];	
}

- (void)textDidEndEditing:(NSNotification*)notification {
	// Called when the user clicks into the field for the first time.
	[self customize];
	[self updateInsertionPointColor];
	[super textDidEndEditing:notification];
}

- (void)textDidChange:(NSNotification*)notification {
	// Just in case ... for the paranoid programmer!
	[self customize];
	[self updateInsertionPointColor];
	[super textDidChange:notification];
}

#pragma mark - Helper

- (void)customize {
	// Store the user defined background color.
	m_userDefinedBackgroundColor = self.backgroundColor;
	// Disable the background color.
	self.backgroundColor = [NSColor colorWithCalibratedWhite:1.0f alpha:0.0f];
	self.focusRingType = NSFocusRingTypeNone;
	self.bordered = NO;
}

- (NSTextView*)updateInsertionPointColor {
	NSTextView* editor = (NSTextView*)[self.window fieldEditor:YES forObject:self];
	[editor setInsertionPointColor:self.textColor];
	return editor;
}


@end
