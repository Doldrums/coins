import 'package:flutter/material.dart';

import 'card_chart.dart';

class CurrencyCard extends StatelessWidget {
  final bool selected;

  const CurrencyCard({Key? key, required this.selected}) : super(key: key);

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
                    'Etherium',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const Spacer(),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.rocket_launch,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '4,015 ETH',
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
                              '\$1263,27',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            const Spacer(),
                            Text(
                              '+5.79%',
                              style: Theme.of(context).textTheme.headline2,
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
            )
          ],
        ),
      );
}
