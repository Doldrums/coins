import 'package:flutter/material.dart';

import '../../../screens/converter.dart';
import '../../../utils/utils.dart';
import '../models/models.dart';

class CoinTile extends StatelessWidget {
  final Coin coin;

  const CoinTile({Key? key, required this.coin}) : super(key: key);

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () => Utils.showBottomRoute(context, (_) => const Converter()),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.network(coin.image),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 160,
                child: RichText(
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    text: '${coin.name}\n',
                    style: Theme.of(context).textTheme.headline4,
                    children: <TextSpan>[
                      TextSpan(
                        text: coin.symbol,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              RichText(
                textAlign: TextAlign.right,
                text: TextSpan(
                  text: '${coin.currentPrice}\n',
                  style: Theme.of(context).textTheme.headline4,
                  children: <TextSpan>[
                    TextSpan(
                      text: '${coin.priceChangePercentage_24h}%',
                      style: coin.priceChangePercentage_24h > 0
                          ? Theme.of(context).textTheme.subtitle1
                          : Theme.of(context).textTheme.subtitle2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
