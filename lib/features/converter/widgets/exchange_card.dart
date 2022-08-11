import 'package:flutter/material.dart';

import '../../coins/models/coin.dart';

class ExchangeCard extends StatelessWidget {
  final Coin coin;
  final ValueNotifier<double> amountNotifier;

  const ExchangeCard({
    Key? key,
    required this.coin,
    required this.amountNotifier,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
              bottom: 8.0,
            ),
            child: Text(
              'Amount',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Card(
            color: Theme.of(context).colorScheme.tertiary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 2.0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 40,
                        height: 40,
                        child: Image.network(coin.image),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      RichText(
                        text: TextSpan(
                          text: '${coin.name}\n',
                          style: Theme.of(context).textTheme.headline4,
                          children: <TextSpan>[
                            TextSpan(
                              text: coin.symbol.toUpperCase(),
                              style: Theme.of(context).textTheme.headline5,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 140,
                        height: 60,
                        child: TextFormField(
                          style: Theme.of(context).textTheme.headline4,
                          textAlign: TextAlign.end,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '0.0',
                          ),
                          onChanged: (value) {
                            if (value.isEmpty) {
                              amountNotifier.value = 0.0;
                            } else {
                              amountNotifier.value = double.parse(value);
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      );
}
