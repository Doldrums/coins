import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(currentTheme);

  static const currentTheme = ThemeMode.light;

  void updateTheme(ThemeMode theme) {
    emit(theme);
  }

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    if (json['themeMode'] as String == 'ThemeMode.light') {
      return ThemeMode.light;
    }
    if (json['themeMode'] as String == 'ThemeMode.dark;') {
      return ThemeMode.dark;
    }
    return null;
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) =>
      <String, String>{'themeMode': state.toString()};
}
