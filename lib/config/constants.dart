import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../features/theme/models/theme_selector_item.dart';
import '../generated/locale_keys.g.dart';

class Constants {
  const Constants._();

  static List<ThemeSelectorItem> themeSelectorItems() => [
        ThemeSelectorItem(
          icon: const Icon(Icons.sunny),
          title: LocaleKeys.settings_theme_item1.tr(),
        ),
        ThemeSelectorItem(
          icon: const Icon(Icons.dark_mode),
          title: LocaleKeys.settings_theme_item2.tr(),
        ),
        ThemeSelectorItem(
          icon: const Icon(Icons.settings_power_rounded),
          title: LocaleKeys.settings_theme_item2.tr(),
        ),
      ];

  static List<String> detailedCoinsIds() => [
        'ethereum',
        'bitcoin',
        'dogecoin',
        'tether',
        'xrp',
        'cardano',
        'binance-usd',
        'solana',
        'tron',
        'litecoin',
        'polkadot',
      ];

  static String prettyFormat() => '#,##,000';
}
