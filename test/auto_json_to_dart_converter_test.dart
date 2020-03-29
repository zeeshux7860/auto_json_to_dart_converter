import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:auto_json_to_dart_converter/auto_json_to_dart_converter.dart';

void main() {
  const MethodChannel channel = MethodChannel('auto_json_to_dart_converter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await AutoJsonToDartConverter.platformVersion, '42');
  });
}
