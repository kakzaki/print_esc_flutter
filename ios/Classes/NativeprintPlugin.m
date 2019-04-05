#import "NativeprintPlugin.h"
#import <nativeprint/nativeprint-Swift.h>

@implementation NativeprintPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNativeprintPlugin registerWithRegistrar:registrar];
}
@end
