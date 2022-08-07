import 'package:flutter/material.dart';

import '../utils/utils.dart';
import 'settings.dart';
import 'widgets/cards_holder.dart';
import 'widgets/items_holder.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
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
                  onPressed: () =>
                      Utils.showBottomRoute(context, (_) => const Settings()),
                )
              ],
              expandedHeight: 460.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Column(
                      children: [
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
                                  borderRadius: BorderRadius.circular(3),
                                ),
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.only(right: 24.0, left: 24.0, top: 12),
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
            const ItemsHolder(),
          ],
        ),
      );
}
