import 'package:flutter/material.dart';

import 'theme_selector_item.dart';

class ThemeSelectorData {
  final int? selectedIndex;
  final int? previousIndex;
  final List<ThemeSelectorItem>? items;
  final ValueChanged<int>? onItemSelected;
  final BuildContext? selectedScreenBuildContext;

  const ThemeSelectorData({
    this.selectedIndex,
    this.previousIndex,
    required this.items,
    this.onItemSelected,
    this.selectedScreenBuildContext,
  });

  ThemeSelectorData copyWith({
    int? selectedIndex,
    int? previousIndex,
    List<ThemeSelectorItem>? items,
    ValueChanged<int>? onItemSelected,
  }) =>
      ThemeSelectorData(
        selectedIndex: selectedIndex ?? this.selectedIndex,
        previousIndex: previousIndex ?? this.previousIndex,
        items: items ?? this.items,
        onItemSelected: onItemSelected ?? this.onItemSelected,
      );
}
