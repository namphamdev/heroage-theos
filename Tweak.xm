#import "Macros.h"
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <SpringBoard/SpringBoard.h>

NSString* Mod_Name = @"Mod Menu";
NSString* Tweak_Icon = @"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";
/***********************************************************
  INSIDE THE FUNCTION BELOW YOU'LL HAVE TO ADD YOUR SWITCHES!
***********************************************************/
void setup() {

  //patching offsets directly, without switch
  // patchOffset(ENCRYPTOFFSET("0x1002DB3C8"), ENCRYPTHEX("0xC0035FD6"));
  // patchOffset(ENCRYPTOFFSET("0x10020D2D4"), ENCRYPTHEX("0x00008052C0035FD6"));

  // // You can write as many bytes as you want to an offset
  // patchOffset(ENCRYPTOFFSET("0x10020D3A8"), ENCRYPTHEX("0x00F0271E0008201EC0035FD6"));
  // // or  
  // patchOffset(ENCRYPTOFFSET("0x10020D3A8"), ENCRYPTHEX("00F0271E0008201EC0035FD6"));
  // // spaces are fine too
  // patchOffset(ENCRYPTOFFSET("0x10020D3A8"), ENCRYPTHEX("00 F0 27 1E 00 08 20 1E C0 03 5F D6"));


  // Empty switch - usefull with hooking
  [switches addSwitch:NSSENCRYPT("Masskill")
    description:NSSENCRYPT("Teleport all enemies to you without them knowing")
  ];

  // Offset Switch with one patch
  // [switches addOffsetSwitch:NSSENCRYPT("God Mode")
  //   description:NSSENCRYPT("You can't die")
  //   offsets: {
  //     ENCRYPTOFFSET("0x1005AB148")
  //   }
  //   bytes: {
  //     ENCRYPTHEX("0x00E0BF12C0035FD6")
  //   }
  // ];

  // Offset switch with multiple patches
  // [switches addOffsetSwitch:NSSENCRYPT("One Hit Kill")
  //   description:NSSENCRYPT("Enemy will die instantly")
  //   offsets: {
  //     ENCRYPTOFFSET("0x1001BB2C0"),
  //     ENCRYPTOFFSET("0x1002CB3B0"),
  //     ENCRYPTOFFSET("0x1002CB3B8")
  //   }
  //   bytes: {
  //     ENCRYPTHEX("0x00E0BF12C0035FD6"),
  //     ENCRYPTHEX("0xC0035FD6"),
  //     ENCRYPTHEX("0x00F0271E0008201EC0035FD6")
  //   }
  // ];

  // Textfield Switch - used in hooking
  // [switches addTextfieldSwitch:NSSENCRYPT("Custom Gold")
  //   description:NSSENCRYPT("Here you can enter your own gold amount")
  //   inputBorderColor:UIColorFromHex(0xBD0000)
  // ];

  // // Slider Switch - used in hooking
  // [switches addSliderSwitch:NSSENCRYPT("Custom Move Speed")
  //   description:NSSENCRYPT("Set your custom move speed")
  //   minimumValue:0
  //   maximumValue:10
  //   sliderColor:UIColorFromHex(0xBD0000)
  // ];
}


/**********************************************************************************************************
     You can customize the menu here
     For colors, you can use hex color codes or UIColor itself
      - For the hex color #BD0000 you'd use: UIColorFromHex(0xBD0000)
      - For UIColor you can visit this site: https://www.uicolor.xyz/#/rgb-to-ui
        NOTE: remove the ";" when you copy your UIColor from there!
     
     Site to find your perfect font for the menu: http://iosfonts.com/  --> view on mac or ios device
     See comment next to maxVisibleSwitches!!!!

     menuIcon & menuButton is base64 data, upload a image to: https://www.browserling.com/tools/image-to-base64 \
     then replace that string with mine.
************************************************************************************************************/
void setupMenu() {

  // If a game uses a framework as base executable, you can enter the name here.
  // For example: UnityFramework, in that case you have to replace NULL with "UnityFramework" (note the quotes)
  [menu setFrameworkName:NULL];

  menu = [[Menu alloc]  
            initWithTitle: Mod_Name
            titleColor: [UIColor whiteColor]
            titleFont: @"Copperplate-Bold"
            credits: @"This Mod Menu has been made by NP, do not share this without proper credits and my permission. \n\nEnjoy!"
            headerColor: UIColorFromHex(0xFF932B)
            switchOffColor: [UIColor darkGrayColor]
            switchOnColor: UIColorFromHex(0xFF932B)
            switchTitleFont: @"Copperplate-Bold"
            switchTitleColor: [UIColor whiteColor]
            infoButtonColor: UIColorFromHex(0xFF932B)
            maxVisibleSwitches: 4 // Less than max -> blank space, more than max -> you can scroll!
            menuWidth: 250
            menuIcon: Tweak_Icon
            menuButton: Tweak_Icon
      ];  

    /********************************************************************
        Once menu has been initialized, it will run the setup functions. 
        All of your switches should be entered in the setup() function!
    *********************************************************************/
    setup();
}

// If the menu button doesn't show up; Change the timer to a bigger amount.
static void didFinishLaunching(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef info) {
  timer(5) {
    setupMenu();
  });
}


%ctor {
  CFNotificationCenterAddObserver(CFNotificationCenterGetLocalCenter(), NULL, &didFinishLaunching, (CFStringRef)UIApplicationDidFinishLaunchingNotification, NULL, CFNotificationSuspensionBehaviorDeliverImmediately);
}