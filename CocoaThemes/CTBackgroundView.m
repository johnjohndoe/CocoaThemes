//
//  CTBackgroundView.m
//  CocoaThemes
//
//  Created by Tobias Preuss on 30.07.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CTBackgroundView.h"

#pragma mark
@implementation CTBackgroundView
#pragma mark

- (id)initWithFrame:(NSRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
		m_backgroundColor = [NSColor redColor];
    }
    return self;
}

- (id)initWithFrame:(NSRect)frame andBackgroundColor:(NSColor*)color {
    self = [super initWithFrame:frame];
    if (self) {
		m_backgroundColor = color;
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
	// FIXME: The background color has not been stored as expected.
//	[m_backgroundColor setFill];
	[[NSColor blueColor] setFill];
	NSRectFill(dirtyRect);
}

@end
