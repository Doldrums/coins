import 'package:flutter/material.dart';

import '../../features/coins/models/models.dart';
import 'coin_detailed_card.dart';

class CurrencyCard extends StatelessWidget {
  final bool selected;
  final Coin coin;

  const CurrencyCard({Key? key, required this.selected, required this.coin})
      : super(key: key);

  @override
  Widget build(BuildContext context) => CoinDetailedCard(
        selected: selected,
        coin: coin,
        //onRefresh: () => context.read<WeatherCubit>().refreshWeather(),
      );
}
