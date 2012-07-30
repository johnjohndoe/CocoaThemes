//
//  CTBackgroundView.h
//  CocoaThemes
//
//  Created by Tobias Preuss on 30.07.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CTBackgroundView : NSView {

	NSColor* m_backgroundColor;
}

- (id)initWithFrame:(NSRect)frame andBackgroundColor:(NSColor*)color;

@end
