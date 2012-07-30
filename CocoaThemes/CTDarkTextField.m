//
//  CTDarkTextField.m
//  CocoaThemes
//
//  Created by Tobias Preuss on 30.07.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CTDarkTextField.h"
#import "CTBackgroundView.h"

#pragma mark
@implementation CTDarkTextField
#pragma mark

- (void)awakeFromNib {
	[super awakeFromNib];
	NSRect frame = self.frame;
	NSView* background = [[CTBackgroundView alloc] initWithFrame:frame andBackgroundColor:m_userDefinedBackgroundColor];
	[self.superview addSubview:background];
	[self removeFromSuperview];
	frame = NSInsetRect(self.bounds, 2.0f, 2.0f);
	self.frame = frame;
	[background addSubview:self];
	background.autoresizingMask = self.autoresizingMask;
	[self.window recalculateKeyViewLoop];
}

- (void)setHidden:(BOOL)flag {
	[super setHidden:flag];
	[self.superview setHidden:flag];
}

@end
