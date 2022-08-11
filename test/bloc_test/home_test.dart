import 'package:app_crypto/features/coins/bloc/coin_bloc.dart';
import 'package:app_crypto/features/coins/models/coin.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:crypto_currency_repository/crypto_currency_repository.dart'
    hide Coin;
import 'package:flutter_test/flutter_test.dart';

import '../helpers/hydrated_bloc.dart';

void main() {
  initHydratedStorage();

  group('CoinBloc initial', () {
    test('CoinBloc initial state is correct', () {
      expect(
        CoinBloc(CryptoCurrencyRepository()).state,
        const CoinState(status: CoinStatus.initial, coins: []),
      );
    });

    test('CoinBloc initial props is correct', () {
      expect(
        CoinBloc(CryptoCurrencyRepository()).state.props,
        [CoinStatus.initial, []],
      );
    });

    test('CoinState supports value comparison', () {
      expect(const CoinState(), const CoinState());
      expect(
        const CoinState().toString(),
        const CoinState().toString(),
      );
    });

    test('CoinsFetched supports value comparison', () {
      expect(CoinsFetched(), CoinsFetched());
    });
  });

  group('CoinBloc', () {
    final mockCoins = [
      Coin(
        id: '',
        symbol: '',
        name: '',
        image: '',
        currentPrice: 0.0,
        priceChange_24h: 0.0,
        priceChangePercentage_24h: 0.0,
        lastUpdated: DateTime.now(),
      )
    ];

    test('initial state is CoinState()', () {
      expect(CoinBloc(CryptoCurrencyRepository()).state, const CoinState());
    });

    group('CoinsFetched', () {
      blocTest<CoinBloc, CoinState>(
        'emits successful status when http fetches initial posts',
        build: () => CoinBloc(CryptoCurrencyRepository())..add(CoinsFetched()),
        expect: () => <CoinState>[],
      );

      blocTest<CoinBloc, CoinState>(
        'drops new events when processing current event',
        build: () => CoinBloc(CryptoCurrencyRepository()),
        act: (bloc) => bloc
          ..add(CoinsFetched())
          ..add(CoinsFetched()),
        expect: () => const <CoinState>[],
      );

      blocTest<CoinBloc, CoinState>(
        'throttles events',
        build: () => CoinBloc(CryptoCurrencyRepository()),
        act: (bloc) async {
          bloc.add(CoinsFetched());
          await Future<void>.delayed(Duration.zero);
          bloc.add(CoinsFetched());
        },
        expect: () => const <CoinState>[],
      );
    });
  });
}
