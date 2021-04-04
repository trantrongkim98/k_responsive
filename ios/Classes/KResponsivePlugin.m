#import "KResponsivePlugin.h"
#if __has_include(<k_responsive/k_responsive-Swift.h>)
#import <k_responsive/k_responsive-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "k_responsive-Swift.h"
#endif

@implementation KResponsivePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftKResponsivePlugin registerWithRegistrar:registrar];
}
@end
