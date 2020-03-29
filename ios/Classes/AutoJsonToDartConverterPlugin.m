#import "AutoJsonToDartConverterPlugin.h"
#if __has_include(<auto_json_to_dart_converter/auto_json_to_dart_converter-Swift.h>)
#import <auto_json_to_dart_converter/auto_json_to_dart_converter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "auto_json_to_dart_converter-Swift.h"
#endif

@implementation AutoJsonToDartConverterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAutoJsonToDartConverterPlugin registerWithRegistrar:registrar];
}
@end
