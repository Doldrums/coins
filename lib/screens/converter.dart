import 'package:flutter/material.dart';

import 'widgets/exchange_card.dart';

class Converter extends StatelessWidget {
  const Converter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Material(
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
                Text(
                  'Converter',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  'calculate values to another one crypto currency',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                const SizedBox(height: 24),
                const ExchangeCard(),
                Center(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.black87,
                      minimumSize: const Size(88, 36),
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2.0)),
                      ),
                    ),
                    onPressed: () { },
                    child: const Text('Switch currencies'),
                  ),
                ),
                const ExchangeCard(),
              ],
            ),
          ),
        ),
      );
}
