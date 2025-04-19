// all_exports.dart
import 'package:esm3ni/core/utils/cache-helper.dart';

import 'constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

export 'functions.dart';
export 'constants.dart';
export 'cache-helper.dart';
export 'package:flutter/cupertino.dart';
export 'package:esm3ni/app.dart';
export 'package:esm3ni/core/pages/pages.dart';

bool isDarkMode = false;
String isLoggedInkey = 'isLoggedIn';
bool isLoggedIn = CacheHelper.getData(isLoggedInkey) ?? false;
