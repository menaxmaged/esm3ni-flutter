import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'material/app.dart';
import 'cupertino/app.dart';

String appName = "Esm3ni";
void main() {
  if (!kIsWeb) {
    if (Platform.isIOS || Platform.isMacOS) {
      // Enable the iOS-style scrollbars
      runApp(Esm3niCupertino(appName: appName));
    } else if (Platform.isAndroid || Platform.isLinux || Platform.isWindows) {
      // Enable the Android-style scrollbars
      runApp(Esm3niMaterial(appName: appName));
    }
  }
}
