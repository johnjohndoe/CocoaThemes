//
//  AppDelegate.h
//  CocoaThemes
//
//  Created by Tobias Preuss on 30.07.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject<NSApplicationDelegate> {

	NSWindow* m_window;
}

@property (assign) IBOutlet NSWindow* window;

@end
