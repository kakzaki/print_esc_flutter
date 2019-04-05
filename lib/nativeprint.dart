import 'dart:async';

import 'package:flutter/services.dart';

class Nativeprint {
  static const MethodChannel _channel =
      const MethodChannel('nativeprint');

  static printit(String title) {
    _channel.invokeMethod("printit", {"title": title});
  }
}
