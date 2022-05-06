#import <Preferences/Preferences.h>

@interface heroageListController: PSListController {
}
@end

@implementation heroageListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"heroage" target:self] retain];
	}
	return _specifiers;
}

/* The "Visit iOSGods.com" link inside the Preferences button */
- (void)link {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://iosgods.com"]];
} 
@end

// vim:ft=objc
