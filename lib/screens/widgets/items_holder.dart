import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../converter.dart';

class ItemsHolder extends StatelessWidget {
  const ItemsHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SliverFixedExtentList(
        itemExtent: 60.0,
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: InkWell(
              onTap: () =>
                  Utils.showBottomRoute(context, (_) => const Converter()),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blueAccent[100],
                    ),
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
                  RichText(
                    text: TextSpan(
                      text: '123234\n',
                      style: Theme.of(context).textTheme.headline4,
                      children: <TextSpan>[
                        TextSpan(
                          text: '+1.45%',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
