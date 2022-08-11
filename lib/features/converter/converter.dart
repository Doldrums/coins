import 'package:flutter/material.dart';

import '../coins/models/coin.dart';
import 'widgets/exchange_card.dart';
import 'widgets/result_card.dart';
import '../../utils/utils.dart';

class Converter extends StatelessWidget {
  final Coin coin;

  const Converter({Key? key, required this.coin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final amountNotifier = ValueNotifier<double>(0.0);
    return Material(
      child: SizedBox(
        height: 500,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 32.0,
            horizontal: 24.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 8.0,
                ),
                child: Row(
                  children: [
                    RichText(
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        text: 'Converter\n',
                        style: Theme.of(context).textTheme.bodyText1,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'according to the exchange rate.',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.close_rounded),
                    )
                  ],
                ),
              ),
              const Divider(),
              ExchangeCard(coin: coin, amountNotifier: amountNotifier),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Row(
                  children: [
                    const Spacer(),
                    Card(
                      color: Theme.of(context).colorScheme.tertiary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                      elevation: 2.0,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Card(
                              color: Theme.of(context).accentColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(26),
                              ),
                              elevation: 2.0,
                              child: const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Icon(Icons.compare_arrows_rounded),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Text(
                              '1 ${coin.symbol.toUpperCase()} = ${Utils.prettyNumber(coin.currentPrice)} USD',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ResultCard(
                amountNotifier: amountNotifier,
                exchangeRate: coin.currentPrice,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
