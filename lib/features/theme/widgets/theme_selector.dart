import 'package:flutter/material.dart';

import '../models/theme_selector_data.dart';
import '../models/theme_selector_item.dart';

class ThemeSelector extends StatelessWidget {
  final ThemeSelectorData? themeSelectorData;

  const ThemeSelector({
    Key? key,
    this.themeSelectorData = const ThemeSelectorData(items: null),
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
            children: themeSelectorData!.items!.map((item) {
              var index = themeSelectorData!.items!.indexOf(item);
              return GestureDetector(
                onTap: () => themeSelectorData!.onItemSelected!(index),
                child: _buildItem(
                  item,
                  themeSelectorData!.selectedIndex == index,
                  context,
                ),
              );
            }).toList(),
          ),
        ),
      );
}
