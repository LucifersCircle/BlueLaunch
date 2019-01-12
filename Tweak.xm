#import <AppList/AppList.h>
@interface UIApplication (Undocumented)
    -(void)launchApplicationWithIdentifier:(NSString*)identifier suspended:(BOOL)suspended;
@end

@interface BluetoothManager : NSObject
-(BOOL)connected;
@end

%hook BluetoothManager
-(void)_connectedStatusChanged { 
    %orig;
    if ([self connected]) {
        NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/User/Library/Preferences/com.idevicehacked.bluelaunch.plist"] ? : [NSMutableDictionary new];
        NSString* selectedApp = nil;
        
        for (NSString *key in [prefs allKeys]) {
    		if (![prefs[key] boolValue]) continue;
		   			 selectedApp = key;
				}
        
        if (selectedApp) {
        	%orig;
            NSLog(@"BlueLaunch App Launched");
            [[UIApplication sharedApplication] launchApplicationWithIdentifier:selectedApp suspended:NO];
        
        }
    }

}

%end