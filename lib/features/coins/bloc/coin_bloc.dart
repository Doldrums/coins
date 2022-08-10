import 'dart:async';

import 'package:app_crypto/features/coins/models/coin.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:crypto_currency_repository/crypto_currency_repository.dart'
    hide Coin;
import 'package:equatable/equatable.dart';
import 'package:stream_transform/stream_transform.dart';

part 'coin_event.dart';

part 'coin_state.dart';

const throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) =>
    (events, mapper) => droppable<E>().call(events.throttle(duration), mapper);

class CoinBloc extends Bloc<CoinEvent, CoinState> {
  CoinBloc(
    this.cryptoCurrencyRepository,
  ) : super(const CoinState()) {
    on<CoinsFetched>(
      _onCoinsFetched,
      transformer: throttleDroppable(throttleDuration),
    );
  }

  final CryptoCurrencyRepository cryptoCurrencyRepository;

  Future<void> _onCoinsFetched(
    CoinsFetched event,
    Emitter<CoinState> emit,
  ) async {
    if (state.hasReachedMax) return;
    try {
      if (state.status == CoinStatus.initial) {
        final coins = await _fetchCoins();
        return emit(
          state.copyWith(
            status: CoinStatus.success,
            coins: coins,
            hasReachedMax: false,
          ),
        );
      }
      final coins = await _fetchCoins(state.coins.length);
      coins.isEmpty
          ? emit(state.copyWith(hasReachedMax: true))
          : emit(
              state.copyWith(
                status: CoinStatus.success,
                coins: List.of(state.coins)..addAll(coins),
                hasReachedMax: false,
              ),
            );
    } catch (e) {
      print(e.toString());
      emit(state.copyWith(status: CoinStatus.failure));
    }
  }

  Future<List<Coin>> _fetchCoins([int startIndex = 0]) async {
    final list = <Coin>[];
    final result = await cryptoCurrencyRepository.getCoins();
    result.forEach((element) {
      list.add(
        Coin(
          id: element.id,
          symbol: element.symbol,
          name: element.name,
          image: element.image,
          currentPrice: element.currentPrice,
          priceChange_24h: element.priceChange_24h,
          priceChangePercentage_24h: element.priceChangePercentage_24h,
          lastUpdated: element.lastUpdated,
        ),
      );
    });
    return list;
  }
}
