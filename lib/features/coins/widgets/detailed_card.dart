import 'package:flutter/material.dart';

import 'detailed_card_chart.dart';
import '../../../utils/utils.dart';
import '../models/models.dart';

class CurrencyCard extends StatelessWidget {
  final bool selected;
  final Coin coin;

  const CurrencyCard({Key? key, required this.selected, required this.coin})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        width: 200,
        height: selected ? 240 : 216,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: selected
              ? Theme.of(context).cardColor
              : Theme.of(context).accentColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(right: 16.0, left: 16.0, top: 16.0),
              child: Row(
                children: [
                  Text(
                    coin.name,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const Spacer(),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Image.network(coin.image),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '${Utils.prettyNumber(coin.currentPrice)} ${coin.symbol}',
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 110,
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Column(
                    children: [
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 16.0,
                          left: 16.0,
                          bottom: 16.0,
                        ),
                        child: Row(
                          children: [
                            Text(
                              '\$${Utils.prettyNumber(coin.currentPrice)}',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            const Spacer(),
                            Text(
                              coin.priceChangePercentage_24h.toString(),
                              style: coin.priceChangePercentage_24h > 0
                                  ? Theme.of(context).textTheme.subtitle1
                                  : Theme.of(context).textTheme.subtitle2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 40.0),
                    child: SizedBox(height: 60, child: CardChart()),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
