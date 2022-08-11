part of 'coin_bloc.dart';

enum CoinStatus { initial, success, failure }

class CoinState extends Equatable {
  const CoinState({
    this.status = CoinStatus.initial,
    this.coins = const <Coin>[],
  });

  final CoinStatus status;
  final List<Coin> coins;

  CoinState copyWith({
    CoinStatus? status,
    List<Coin>? coins,
  }) =>
      CoinState(
        status: status ?? this.status,
        coins: coins ?? this.coins,
      );

  @override
  String toString() =>
      '''CoinState { status: $status, coins: ${coins.length} }''';

  @override
  List<Object> get props => [status, coins];
}
