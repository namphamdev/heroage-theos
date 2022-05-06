#import "writeData.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <substrate.h>

/* To MSHook Offsets, use https://iosgods.com/topic/22718-mshook-tweakpatcherfunction-tweakpatcher-withwithout-psedittextcellpsslidercell-generator-online/ */
/* To Easily Generate Tweak.xm and Preferences Plist https://iosgods.com/topic/24138-code-inject-generator-online-tweakxm-preferencesplist/ */

#define PLIST_PATH @"/var/mobile/Library/Preferences/com.csci.patcher.heroage.plist"

inline bool GetPrefBool(NSString *key) {
		return [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH] valueForKey:key] boolValue];
}

%ctor {
	if(GetPrefBool(@"key1")) {
		writeData(0x0000000100C0557C, 0x00008052C0035F);
		writeData(0x000000010134C674, 0x0900805209E90139);
		writeData(0x0000000100C00FD8, 0x28008052687200B9);
	}
}




/* Popup with a link

Varieties of a UIAlertView Popup can be found here: https://iosgods.com/topic/13988-varieties-of-uialertview-types-to-use-in-your-tweaks-patchers/

*/


%hook AppDelegate // Change this with your Application's Delegate. AppController, UnityAppController, GameDelegate etc.

- (BOOL)application:(id)fp8 didFinishLaunchingWithOptions:(id)fp12 { // Popup only once at each launch of the app.
UIAlertView *igcredits = [[UIAlertView alloc] initWithTitle:@"heroage Cheats"
                                                  message:@"\nheroage Cheats by Rxeyjn for iOSGods.com"
                                                 delegate:self
										cancelButtonTitle:@"Thanks"
										otherButtonTitles:@"Visit Us", nil];
[igcredits show];
[igcredits release];
return %orig();
}

%end
