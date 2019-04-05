import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nativeprint/nativeprint.dart';

void main() {
  const MethodChannel channel = MethodChannel('nativeprint');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Nativeprint.platformVersion, '42');
  });
}
