import 'package:flutter/material.dart';

import '../features/theme/widgets/theme_selector.dart';

class Constants {
  const Constants._();

  static List<ThemeSelectorItem> themeSelectorItems() => [
        ThemeSelectorItem(
          icon: const Icon(Icons.sunny),
          title: 'Light Mode',
        ),
        ThemeSelectorItem(
          icon: const Icon(Icons.dark_mode),
          title: 'Dark Mode',
        ),
        ThemeSelectorItem(
          icon: const Icon(Icons.settings_power_rounded),
          title: 'System UI',
        ),
      ];

  static List<String> detailedCoinsIds() =>
      ['ethereum', 'bitcoin', 'tether', 'usdc', 'BNB'];
}
