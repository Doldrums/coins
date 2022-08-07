import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        bottom: false,
        child: SizedBox(
            height: 500,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 32.0, horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Settings',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
