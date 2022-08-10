
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../features/coins/models/models.dart';
import '../../utils/fixed_extent_hook.dart';
import 'card.dart';
import 'progress_dot.dart';

class CardsHolder extends HookWidget {
  const CardsHolder({
    Key? key,
    required this.detailedCoins,
  }) : super(key: key);

  final List<Coin> detailedCoins;

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
                    // TODO:
                    coin: detailedCoins[index.abs()],
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
            5,
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
