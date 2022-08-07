import 'package:app_crypto/screens/converter.dart';
import 'package:app_crypto/screens/settings.dart';
import 'package:app_crypto/screens/widgets/cards_holder.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Center(
              child: Text(
                'Home',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            pinned: true,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.dehaze_rounded,
                  color: Theme.of(context).cardColor,
                ),
                onPressed: () => showBarModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => const Settings(),
                ),
              )
            ],
            expandedHeight: 460.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 5.0,
                            margin: const EdgeInsets.only(right: 16.0),
                            decoration: BoxDecoration(
                                color: Theme.of(context).accentColor,
                                borderRadius: BorderRadius.circular(3)),
                          ),
                          Text(
                            'Explore\ncollections',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const CardsHolder(
                      itemCount: 7,
                    ),
                  ]),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(right: 24.0, left: 24.0, top: 12),
              child: Row(
                children: [
                  Text(
                    'Recommendations',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const Spacer(),
                  Text(
                    'View all',
                    style: Theme.of(context).textTheme.button,
                  ),
                ],
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 60.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: InkWell(
                    onTap: () => showBarModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (context) => const Converter(),
                    ),
                    child: Row(
                      children: [
                        Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blueAccent[100],
                            ),
                            child: const Icon(Icons.ac_unit_rounded)),
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
