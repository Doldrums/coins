import 'package:crypto_currency_repository/crypto_currency_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/coins/bloc/coin_bloc.dart';
import 'features/coins/widgets/coin_tile.dart';
import 'features/detailed_coins/cubit/crypto_currency_cubit.dart';
import 'screens/settings.dart';
import 'screens/widgets/cards_holder.dart';
import 'utils/utils.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) =>
            CoinDetailedCubit(context.read<CryptoCurrencyRepository>()),
        child: const HomeView(),
      );
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = ScrollController();
    return BlocProvider(
      create: (_) => CoinBloc(CryptoCurrencyRepository())..add(CoinsFetched()),
      child: BlocBuilder<CoinBloc, CoinState>(
        builder: (context, state) {
          switch (state.status) {
            case CoinStatus.failure:
              return const Center(child: Text('failed to fetch coins'));
            case CoinStatus.success:
              return Scaffold(
                body: CustomScrollView(
                  controller: controller,
                  slivers: <Widget>[
                    SliverAppBar(
                      pinned: true,
                      actions: [
                        IconButton(
                          icon: Icon(
                            Icons.dehaze_rounded,
                            color: Theme.of(context).cardColor,
                          ),
                          onPressed: () => Utils.showBottomRoute(
                            context,
                            (_) => const Settings(),
                          ),
                        )
                      ],
                      expandedHeight: 440.0,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Container(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 60.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 5.0,
                                        margin: const EdgeInsets.only(
                                          right: 16.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).accentColor,
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                      ),
                                      Text(
                                        'Explore\ncollections',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1,
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                CardsHolder(
                                  detailedCoins: state.coins
                                      .where(
                                        (element) => {
                                          'ethereum',
                                          'bitcoin',
                                          'tether',
                                          'usdc',
                                          'BNB'
                                        }.contains(element.id),
                                      )
                                      .toList(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 24.0,
                          left: 24.0,
                          top: 12,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Recommendations',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: () => controller.animateTo(
                                1000,
                                duration: const Duration(milliseconds: 1000),
                                curve: Curves.linear,
                              ),
                              child: Text(
                                'View all',
                                style: Theme.of(context).textTheme.button,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 20,
                      ),
                    ),
                    SliverFixedExtentList(
                      itemExtent: 50.0,
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) =>
                            CoinTile(coin: state.coins[index]),
                      ),
                    ),
                  ],
                ),
              );
            case CoinStatus.initial:
              return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}