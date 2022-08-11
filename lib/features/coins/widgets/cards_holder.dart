import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../utils/utils.dart';
import '../models/models.dart';
import 'detailed_card.dart';
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
                    coin: detailedCoins[(index % 10).abs()],
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
            detailedCoins.length + 1,
            (index) => ProgressDot(
              index: (index % 10).abs(),
              selectedIndex: selectedIndex.value,
            ),
          ),
        ),
      ],
    );
  }
}
