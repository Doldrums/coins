import 'package:flutter/material.dart';

class ThemeSelector extends StatelessWidget {
  final ThemeSelectorData? navBarEssentials;

  const ThemeSelector({
    Key? key,
    this.navBarEssentials = const ThemeSelectorData(items: null),
  }) : super(key: key);

  Widget _buildItem(
    ThemeSelectorItem item,
    bool isSelected,
    BuildContext context,
  ) =>
      AnimatedContainer(
        width: isSelected ? 120 : 50,
        height: 46,
        duration: const Duration(milliseconds: 400),
        curve: Curves.ease,
        child: Card(
          elevation: isSelected ? 1.0 : 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: isSelected
              ? Theme.of(context).accentColor
              : Theme.of(context).colorScheme.tertiary,
          child: Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 8,
                    ),
                    child: IconTheme(
                      data: IconThemeData(
                        size: 20,
                        color: isSelected
                            ? Colors.white
                            : Theme.of(context).colorScheme.surface,
                      ),
                      child: item.icon,
                    ),
                  ),
                ),
                if (isSelected)
                  Flexible(
                    child: Material(
                      type: MaterialType.transparency,
                      child: FittedBox(
                        child: Text(
                          item.title!,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) => Card(
        color: Theme.of(context).colorScheme.tertiary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        elevation: 2.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: navBarEssentials!.items!.map((item) {
              var index = navBarEssentials!.items!.indexOf(item);
              return GestureDetector(
                onTap: () => navBarEssentials!.onItemSelected!(index),
                child: _buildItem(
                  item,
                  navBarEssentials!.selectedIndex == index,
                  context,
                ),
              );
            }).toList(),
          ),
        ),
      );
}

class ThemeSelectorData {
  final int? selectedIndex;
  final int? previousIndex;
  final Color? backgroundColor;
  final List<ThemeSelectorItem>? items;
  final ValueChanged<int>? onItemSelected;
  final double? navBarHeight;
  final bool? popScreensOnTapOfSelectedTab;
  final BuildContext? selectedScreenBuildContext;

  const ThemeSelectorData({
    this.selectedIndex,
    this.previousIndex,
    this.backgroundColor,
    this.popScreensOnTapOfSelectedTab,
    this.navBarHeight = 0.0,
    required this.items,
    this.onItemSelected,
    this.selectedScreenBuildContext,
  });

  ThemeSelectorData copyWith({
    int? selectedIndex,
    int? previousIndex,
    double? iconSize,
    Color? backgroundColor,
    List<ThemeSelectorItem>? items,
    ValueChanged<int>? onItemSelected,
    double? navBarHeight,
    Function(int)? popAllScreensForTheSelectedTab,
    bool? popScreensOnTapOfSelectedTab,
  }) =>
      ThemeSelectorData(
        selectedIndex: selectedIndex ?? this.selectedIndex,
        previousIndex: previousIndex ?? this.previousIndex,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        items: items ?? this.items,
        onItemSelected: onItemSelected ?? this.onItemSelected,
        navBarHeight: navBarHeight ?? this.navBarHeight,
        popScreensOnTapOfSelectedTab:
            popScreensOnTapOfSelectedTab ?? this.popScreensOnTapOfSelectedTab,
      );
}

class ThemeSelectorItem {
  final Widget icon;
  final String? title;

  ThemeSelectorItem({
    required this.icon,
    this.title,
  });
}

class SelectedThemeNotifier extends ChangeNotifier {
  SelectedThemeNotifier({int initialIndex = 0})
      : _index = initialIndex,
        assert(initialIndex >= 0);

  int get index => _index;
  int _index;

  set index(int value) {
    if (_index == value) {
      return;
    }
    _index = value;
    notifyListeners();
  }

  jumpToTab(int value) {
    if (_index == value) {
      return;
    }
    _index = value;
    notifyListeners();
  }
}
