import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Icon icon;
  final Function onPressed;

  const SettingsCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          InkWell(
            onTap: () => onPressed.call(),
            child: Card(
              color: Theme.of(context).colorScheme.tertiary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 2.0,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: icon,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: RichText(
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              text: TextSpan(
                text: '$title\n',
                style: Theme.of(context).textTheme.headline4,
                children: <TextSpan>[
                  TextSpan(
                    text: subtitle,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
            ),
          ),
        ],
      );
}
