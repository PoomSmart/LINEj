#import "../PS.h"

%hook MATSettings

- (id)jailbroken { return @NO; }
- (void)setJailbroken:(id)a { %orig(@NO); }

%end

%hook MobileAppTracker

+ (void)setJailbroken:(BOOL)a { %orig(NO); }

%end

%hook MATUtils

+ (BOOL)checkJailBreak { return NO; }

%end

%hook JailbrokenDetector

+ (BOOL)isDeviceJailbroken { return NO; }

%end

%hook NeloPhoneInfo

- (BOOL)isJailbroken { return NO; }

%end