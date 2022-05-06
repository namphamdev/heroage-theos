#import "vm_writeData.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <substrate.h>

/* To MSHook Offsets, use https://iosgods.com/topic/22718-mshook-tweakpatcherfunction-tweakpatcher-withwithout-psedittextcellpsslidercell-generator-online/ */
/* To Easily Generate Tweak.xm and Preferences Plist https://iosgods.com/topic/24138-code-inject-generator-online-tweakxm-preferencesplist/ */

%ctor {
	// CharacterData_GetTotalManaCost
	// vm_writeData(0x100C0557C, 0x00008052);
	// vm_writeData(0x100C05580, 0xC0035FD6);
	// OnFreeGiftButton
	vm_writeData(0x10134C674, 0x09008052);
	// Basemonster_onenable
	vm_writeData(0x100C00FD8, 0x28008052);
}
