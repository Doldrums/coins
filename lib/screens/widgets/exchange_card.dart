import 'package:flutter/material.dart';

class ExchangeCard extends StatelessWidget {
  const ExchangeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Card(
        elevation: 3,
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    color: Colors.blueAccent[100],
                    child: const Icon(Icons.ac_unit_rounded),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Binance coin\n',
                      style: Theme.of(context).textTheme.headline4,
                      children: <TextSpan>[
                        TextSpan(
                          text: 'BNB',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.arrow_right),
                    onPressed: () {},
                  )
                ],
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter value',
                ),
              ),
            ],
          ),
        ),
      );
}
