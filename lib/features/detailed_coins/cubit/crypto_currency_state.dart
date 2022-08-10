part of 'crypto_currency_cubit.dart';

enum CoinDetailedStatus { initial, loading, success, failure }

extension CoinDetailedStatusX on CoinDetailedStatus {
  bool get isInitial => this == CoinDetailedStatus.initial;
  bool get isLoading => this == CoinDetailedStatus.loading;
  bool get isSuccess => this == CoinDetailedStatus.success;
  bool get isFailure => this == CoinDetailedStatus.failure;
}

@JsonSerializable()
class CoinDetailedState extends Equatable {
  const CoinDetailedState({
    this.status = CoinDetailedStatus.initial,
    DetailedCoin? coin,
  }) : coin = coin ?? DetailedCoin.empty;

  factory CoinDetailedState.fromJson(Map<String, dynamic> json) =>
      _$CoinDetailedStateFromJson(json);

  final CoinDetailedStatus status;
  final DetailedCoin coin;

  CoinDetailedState copyWith({
    CoinDetailedStatus? status,
    DetailedCoin? coin,
  }) => CoinDetailedState(
      status: status ?? this.status,
    coin: coin ?? this.coin,
    );

  Map<String, dynamic> toJson() => _$CoinDetailedStateToJson(this);

  @override
  List<Object?> get props => [status, coin];
}
