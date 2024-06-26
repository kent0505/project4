import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

bool onboarding = true;

Future<void> getData() async {
  final prefs = await SharedPreferences.getInstance();
  onboarding = prefs.getBool('onboarding') ?? true;
  log('onboarding = $onboarding');
}

Future<void> saveBool(String key, bool value) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setBool(key, value);
}

int getCurrentTimestamp() {
  return DateTime.now().millisecondsSinceEpoch ~/ 1000;
}
