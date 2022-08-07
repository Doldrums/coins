import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../utils/fixed_extent_hook.dart';
import 'card.dart';
import 'progress_dot.dart';

class CardsHolder extends HookWidget {
  const CardsHolder({
    Key? key,
    required this.itemCount,
  }) : super(key: key);

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    final controller = useFixedExtentScrollController();
    final selectedIndex = useState(0);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 280,
          child: RotatedBox(
            quarterTurns: 3,
            child: ListWheelScrollView.useDelegate(
              controller: controller,
              onSelectedItemChanged: (index) => selectedIndex.value = index,
              itemExtent: 200,
              physics: const FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                builder: (context, index) => RotatedBox(
                  quarterTurns: 1,
                  child: CurrencyCard(
                    selected: selectedIndex.value == index,
                  ),
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            itemCount,
            (index) => ProgressDot(
              index: index,
              selectedIndex: selectedIndex.value,
            ),
          ),
        ),
      ],
    );
  }
}
