import 'package:app_crypto/features/theme/cubit/theme_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/hydrated_bloc.dart';

void main() {
  initHydratedStorage();

  group('ThemeCubit', () {
    test('initial state is correct', () {
      expect(ThemeCubit().state, ThemeCubit.currentTheme);
    });

    group('toJson/fromJson', () {
      test('works properly', () {
        final themeCubit = ThemeCubit();
        expect(
          themeCubit.fromJson(themeCubit.toJson(themeCubit.state)!),
          themeCubit.state,
        );
      });
    });

    group('updateTheme', () {
      blocTest<ThemeCubit, ThemeMode>(
        'emits correct ThemeMode for Theme switch from default',
        build: ThemeCubit.new,
        act: (cubit) => cubit.updateTheme(ThemeMode.dark),
        expect: () => <ThemeMode>[ThemeMode.dark],
      );

      blocTest<ThemeCubit, ThemeMode>(
        'emits correct ThemeMode for Theme switch from default',
        build: ThemeCubit.new,
        act: (cubit) => cubit.updateTheme(ThemeMode.light),
        expect: () => <ThemeMode>[ThemeMode.light],
      );
    });
  });
}
