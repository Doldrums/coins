part of 'coin_bloc.dart';

enum CoinStatus { initial, success, failure }

class CoinState extends Equatable {
  const CoinState({
    this.status = CoinStatus.initial,
    this.coins = const <Coin>[],
    this.hasReachedMax = false,
  });

  final CoinStatus status;
  final List<Coin> coins;
  final bool hasReachedMax;

  CoinState copyWith({
    CoinStatus? status,
    List<Coin>? coins,
    bool? hasReachedMax,
  }) =>
      CoinState(
        status: status ?? this.status,
        coins: coins ?? this.coins,
        hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      );

  @override
  String toString() =>
      '''PostState { status: $status, hasReachedMax: $hasReachedMax, posts: ${coins.length} }''';

  @override
  List<Object> get props => [status, coins, hasReachedMax];
}
