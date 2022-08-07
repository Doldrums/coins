import 'package:flutter/material.dart';

class Converter extends StatelessWidget {
  const Converter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        bottom: false,
        child: SizedBox(
            height: 500,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 32.0, horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Converter',
                    style:
                    Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    'calculate values to another one crypto currency',
                    style:
                    Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
