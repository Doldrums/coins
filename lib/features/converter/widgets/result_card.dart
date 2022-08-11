import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class ResultCard extends StatelessWidget {
  final ValueNotifier<double> amountNotifier;
  final double exchangeRate;

  const ResultCard({
    Key? key,
    required this.amountNotifier,
    required this.exchangeRate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ValueListenableBuilder<double>(
        valueListenable: amountNotifier,
        builder: (context, value, child) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                bottom: 8.0,
              ),
              child: Text(
                'Converted to',
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
                        Text(
                          Utils.prettyNumber(value * exchangeRate),
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        const Spacer(),
                        const SizedBox(
                          width: 40,
                          height: 40,
                          child: Icon(Icons.monetization_on_outlined),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'US Dollar\n',
                            style: Theme.of(context).textTheme.headline4,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'USD',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
