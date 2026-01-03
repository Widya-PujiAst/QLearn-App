import 'package:flutter/material.dart';

class ThemeController {
  // 🔥 singleton
  static final ThemeController _instance = ThemeController._internal();
  factory ThemeController() => _instance;
  ThemeController._internal();

  // 🔥 HARUS ValueNotifier<bool>
  final ValueNotifier<bool> isDarkMode = ValueNotifier<bool>(false);

  void toggleTheme(bool value) {
    isDarkMode.value = value;
  }
}
