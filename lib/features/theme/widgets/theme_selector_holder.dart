import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/theme_cubit.dart';
import 'theme_selector.dart';

class ThemeSelectorHolder extends StatefulWidget {
  final List<ThemeSelectorItem>? items;
  final BuildContext context;

  const ThemeSelectorHolder({
    Key? key,
    this.items,
    required this.context,
  }) : super(key: key);

  @override
  ThemeSelectorHolderState createState() => ThemeSelectorHolderState();
}

class ThemeSelectorHolderState extends State<ThemeSelectorHolder> {
  SelectedThemeNotifier? _notifier;
  int? _previousIndex;
  int? _currentIndex;

  @override
  void initState() {
    super.initState();
    int initialIndex;
    if (widget.context.read<ThemeCubit>().state == ThemeMode.light) {
      initialIndex = 0;
    }
    if (widget.context.read<ThemeCubit>().state == ThemeMode.dark) {
      initialIndex = 1;
    } else {
      initialIndex = 2;
    }
    _notifier = SelectedThemeNotifier(initialIndex: initialIndex);

    _previousIndex = _notifier!.index;
    _currentIndex = _notifier!.index;

    _notifier!.addListener(() {
      if (_notifier!.index != _currentIndex) {
        if (mounted) {
          setState(
            () => _currentIndex = _notifier!.index,
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) => ThemeSelector(
        navBarEssentials: ThemeSelectorData(
          selectedIndex: _notifier!.index,
          previousIndex: _previousIndex,
          items: widget.items,
          navBarHeight: 80,
          onItemSelected: (int index) {
            switch (index) {
              case 0:
                context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                break;
              case 1:
                context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                break;
            }
            if (_notifier!.index != _previousIndex) {
              _previousIndex = _notifier!.index;
            }
            _notifier!.index = index;
          },
        ),
      );
}
